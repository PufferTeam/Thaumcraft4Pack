const fs = require('fs');
const { https } = require("follow-redirects");
const crypto = require('crypto');
const cf = require("curseforge-api");
const path = require("path");

console.log("Running pack.js..");


const text = fs.readFileSync('./cf-key.txt', 'utf8');
const client = new cf.CurseForgeClient(text);

const file = JSON.parse(fs.readFileSync('./mods.json', 'utf8'));
var mods = [];
const cachePath = path.join(__dirname, "cache.json");

let cache;
if (!fs.existsSync(cachePath)) {
  cache = {};
  fs.writeFileSync(cachePath, JSON.stringify(cache, null, 2), "utf8");
} else {
  try {
    cache = JSON.parse(fs.readFileSync(cachePath, "utf8"));
  } catch (err) {
    cache = {};
    fs.writeFileSync(cachePath, JSON.stringify(cache, null, 2), "utf8");
  }
}

const packwizFolder = "./mods";
const downloadFolder = "./download";
const fileDirectorFolder = "./config/mod-director"

function sanitizeFileName(name) {
  return name
    .replace(/%20/g, " ")     // turn %20 into actual spaces
    .replace(/%[A-F0-9]{2}/g, "+") // replace any other %xx with "+"
    .trim();
}

async function downloadFile(url, dest) {
  return new Promise((resolve, reject) => {
    const file = fs.createWriteStream(dest);

    https.get(url, (response) => {
      if (response.statusCode !== 200) {
        reject(new Error(`Request failed: ${response.statusCode}`));
        return;
      }

      response.pipe(file);

      file.on("finish", () => {
        file.close(resolve);
      });
    }).on("error", (err) => {
      fs.unlink(dest, () => reject(err));
    });
  });
}

function removeDirAsync(dirPath) {
  return new Promise((resolve, reject) => {
    fs.rm(dirPath, { recursive: true, force: true }, (err) => {
      if (err) reject(err);
      else resolve();
    });
  });
}

function mkdirAsync(dirPath) {
  return new Promise((resolve, reject) => {
    fs.mkdir(dirPath, { recursive: true }, (err) => {
      if (err) reject(err);
      else resolve();
    });
  });
}

async function resetFolder(dirPath) {
  try {
    await removeDirAsync(dirPath);
    await mkdirAsync(dirPath);
    console.log(`Folder '${dirPath}' is now clean.`);
  } catch (err) {
    console.error('Error resetting folder:', err);
  }
}

resetFolder(packwizFolder);
resetFolder(fileDirectorFolder);
resetFolder(downloadFolder);

async function getCurseDownloadLink(pID, fID) {
  let file = await client.getModFileDownloadURL(pID, fID);
  return file;
}

async function getModrinthDownloadLink(fID) {
  let url0 = await getJsonFromUrl(`https://api.modrinth.com/v2/version/${fID}`)
  let file;
  url0.files.forEach(e => {
    if (!e.url.endsWith("-dev.jar") && !e.url.endsWith("-api.jar") && !e.url.endsWith("-sources.jar")) {
      file = e.url;
    }
  });
  return file;
}

async function getJsonFromUrl(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (response) => {
      if (response.statusCode !== 200) {
        reject(new Error(`Request failed with status ${response.statusCode}`));
        return;
      }

      let data = "";
      response.on("data", (chunk) => {
        data += chunk;
      });

      response.on("end", () => {
        try {
          const json = JSON.parse(data);
          resolve(json);
        } catch (err) {
          reject(err);
        }
      });

      response.on("error", reject);
    }).on("error", reject);
  });
}


function getFileNameFromUrl(url) {
  if (!url) {
    return null;
  }
  let cleanUrl = url.split('?')[0].split('#')[0];
  let fileName = cleanUrl.substring(cleanUrl.lastIndexOf('/') + 1);
  return fileName;
}

async function getFileHashFromUrl(hashText, fileUrl) {
  return new Promise((resolve, reject) => {
    https.get(fileUrl, (response) => {
      if (response.statusCode !== 200) {
        reject(new Error(`Request failed with status ${response.statusCode}`));
        return;
      }

      const hash = crypto.createHash(hashText);
      response.on("data", (chunk) => hash.update(chunk));
      response.on("end", () => resolve(hash.digest("hex")));
      response.on("error", reject);
    }).on("error", reject);
  });
}

function write(filePath, fileContent) {
  if (Array.isArray(fileContent)) {
    fileContent = fileContent.join("\n");
  }
  fs.writeFile(filePath, fileContent, { flag: 'w' }, function (err) {
    if (err)
      return console.error(err);
    fs.readFile(filePath, 'utf-8', function (err, data) {
      if (err)
        return console.error(err);
    });
  });
}

function parseFile() {
  Object.entries(file.mods).forEach(([key, mod]) => {
    let isClientMod = false;
    if (mod.client != undefined) {
      isClientMod = mod.client;
    }
    let folderName = undefined;
    if (mod.folder != undefined) {
      folderName = mod.folder;
    }
    if (mod.type == "github") {
      mods.push({ key: key, name: mod.name, type: mod.type, link: mod.link, client: isClientMod, fileName: null, hash: null, url: null, folder: folderName });
    } else if (mod.type == "curseforge" || mod.type == "modrinth") {
      mods.push({ key: key, name: mod.name, type: mod.type, pID: mod["project-id"], fID: mod["file-id"], client: isClientMod, fileName: null, hash: null, url: null, folder: folderName });
    }
  });
}
parseFile();

async function generateData() {
  if (!Array.isArray(mods)) {
    throw new Error("mods must be an array");
  }

  for (let i = 0; i < mods.length; i++) {
    const mod = mods[i];
    if (!mod) continue; // skip undefined entries

    let url = "";
    if (mod.type === "github") {
      url = mod.link;
    } else if (mod.type === "curseforge") {
      url = await getCurseDownloadLink(mod.pID, mod.fID);
    } else {
      url = await getModrinthDownloadLink(mod.fID);
    }

    const fileName = await getFileNameFromUrl(url);
    var hash = undefined;
    var hash2 = undefined;
    if (cache[fileName] == undefined) {
      hash = await getFileHashFromUrl("sha256", url);
      hash2 = await getFileHashFromUrl("md5", url);
    } else {
      hash = cache[fileName]["hash"];
      hash2 = cache[fileName]["hash2"];
    }

    if (cache != null) {
      cache[fileName] = { hash: hash, hash2: hash2 };
    }

    mods[i]["fileName"] = sanitizeFileName(fileName);
    mods[i]["hash"] = hash;
    mods[i]["hash2"] = hash2;
    mods[i]["url"] = url;
  }
  const formatedCache = JSON.stringify(cache, null, 2);
  write('./cache.json', formatedCache)
}

async function generatePackwiz() {
  for (const mod of mods) {
    let clientString = "both";
    let fileC = [];

    if (mod.client) {
      clientString = "client";
    }

    fileC.push(`name = "${mod.name}"`);

    let prefix = "";
    if (mod.folder != undefined) {
      prefix = `./${mod.folder}/`
    }
    fileC.push(`filename = "${prefix}${mod.fileName}"`);
    fileC.push(`side = "${clientString}"`);
    fileC.push('');
    fileC.push('[download]')
    fileC.push('hash-format = "sha256"')
    fileC.push(`hash = "${mod.hash}"`)
    if (mod.type == "github" || mod.type == "modrinth") {
      fileC.push(`url = "${mod.url}"`)
    } else if (mod.type == "curseforge") {
      fileC.push('mode = "metadata:curseforge"')
    }
    if (mod.type == "curseforge" || mod.type == "modrinth") {
      fileC.push('')
      fileC.push('[update]')
      fileC.push(`[update.${mod.type}]`)
      if (mod.type == "curseforge") {
        fileC.push(`file-id = ${mod.fID}`)
        fileC.push(`project-id = ${mod.pID}`)
      } else {
        fileC.push(`mod-id = "${mod.pID}"`)
        fileC.push(`version = "${mod.fID}"`)
      }

    }
    await write(`${packwizFolder}/${mod.key}.pw.toml`, fileC.join("\n"));
  }
}

async function generateFileDirector() {
  const modBundle = {
    url: [],
    curse: [],
    modrinth: []
  };
  for (const mod of mods) {
    let modEntry = {};
    let installation = {
      continueOnFailedDownload: true,
      selectedByDefault: true,
      name: mod.name
    };
    let meta = {
      hash: {
        MD5: mod.hash2,
        "SHA-256": mod.hash
      }
    };
    let options = {
      launchwrapperTweakerForceNext: true
    }
    if (mod.client) {
      meta.side = "CLIENT";
    }
    modEntry.fileName = mod.fileName;
    if (mod.type == "github") {
      modEntry.url = mod.url;
    } else if (mod.type == "curseforge" || mod.type == "modrinth") {
      modEntry.addonId = mod.pID;
      modEntry.fileId = mod.fID;
    }
    if (mod.folder != undefined) {
      modEntry.folder = "./mods/" + mod.folder + "/";
    }
    modEntry.installationPolicy = installation;
    modEntry.metadata = meta;
    modEntry.options = options;
    if (mod.type === "github") {
      modBundle.url.push(modEntry);
    } else if (mod.type === "curseforge") {
      modBundle.curse.push(modEntry);
    } else if (mod.type === "modrinth") {
      modBundle.modrinth.push(modEntry);
    }
  }
  const formatedJSON = JSON.stringify(modBundle, null, 2);
  write(fileDirectorFolder + "/mods.bundle.json", formatedJSON)
}

async function main() {
  await generateData();
  await generatePackwiz();
  await generateFileDirector();
}
main();

async function download() {
  await main();
  await downloadAll();
}

async function downloadAll() {
  for (const mod of mods) {
    downloadFile(mod.url, downloadFolder + "/" + mod.fileName);
  }
}

function none() {

}
const commands = {
  download: download,
  gen: none
};

(async () => {
  const [, , fnName, ...args] = process.argv;
  if (!fnName || !commands[fnName]) {
    console.error("Usage: node pack.js <functionName> [args...]");
    process.exit(1);
  }

  await commands[fnName](...args);
})();