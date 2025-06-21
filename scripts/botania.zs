import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Research;
import mods.botania.Apothecary;
import mods.botania.PureDaisy;

var icon = <Botania:doubleFlower2:2>;
var arcaneBlock = <Thaumcraft:blockCosmeticSolid:6>;
var arcaneSlab = <Thaumcraft:blockCosmeticSlabStone>;
var arcaneWood = <customitems:arcane_wood_block>;
var arcaneGreatwood = <Thaumcraft:blockWoodenDevice:6>;
var arcaneSilverwood = <Thaumcraft:blockWoodenDevice:7>;
var balancedShard = <Thaumcraft:ItemShard:6>;
var runicMatrix = <Thaumcraft:blockStoneDevice:2>;
var nitor = <Thaumcraft:ItemResource:1>;
var gold = <minecraft:gold_ingot>;
var rune = <Botania:rune>;
var livingrock = <Botania:livingrock>;
var livingwood = <Botania:livingwood>;
var manaPowder = <Botania:manaResource:23>;
var manaPearl = <Botania:manaResource:1>;
var manaSteel = <Botania:manaResource>;
var petals = <Botania:petal:*>;
var altar = <Botania:altar>;
var manaPool = <Botania:pool>;
var manaPoolSmall = <Botania:pool:2>;
var creativeManaPool = <Botania:pool:1>;
var manaWand = <Botania:twigWand>.withTag({color1: 0, color2: 0, boundTileZ: 0, boundTileX: 0, boundTileY: -1});
var manaSpreader = <Botania:spreader>;

var pureDaisy = <Botania:specialFlower>.withTag({type: "puredaisy"});

var anyCrystal = <Thaumcraft:ItemCrystalEssence>;
var airRune = <Botania:rune:1>;
var airShard = <Thaumcraft:ItemShard>;
var airCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "aer"}]});
var fireRune = <Botania:rune:2>;
var fireShard = <Thaumcraft:ItemShard:1>;
var fireCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "ignis"}]});
var waterRune = <Botania:rune:3>;
var waterShard = <Thaumcraft:ItemShard:2>;
var waterCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "aqua"}]});
var earthRune = <Botania:rune:4>;
var earthShard = <Thaumcraft:ItemShard:3>;
var earthCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "terra"}]});
var orderRune = <Botania:rune:5>;
var orderShard = <Thaumcraft:ItemShard:4>;
var orderCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "ordo"}]});
var entropyRune = <Botania:rune:6>;
var entropyShard = <Thaumcraft:ItemShard:5>;
var entropyCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "perditio"}]});
var springRune = <Botania:rune:8>;
var springCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "messis"}]});
var summerRune = <Botania:rune:9>;
var summerCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "limus"}]});
var autumnRune = <Botania:rune:10>;
var autumnCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "herba"}]});
var winterRune = <Botania:rune:11>;
var winterCrystal = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "gelum"}]});
var manaRune = <Botania:rune:7>;
var basicRuneCost = 5000;
var advancedRuneCost = 8000;

//Research Tab
mods.thaumcraft.Research.addTab("BOTANY", "thaumcraft", "textures/misc/botania_tab.png");
game.setLocalization("en_US", "tc.research_category.BOTANY", "Botany");

//Water Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(waterRune);
mods.botania.RuneAltar.addRecipe(waterRune, [manaPowder, manaSteel, waterShard, waterCrystal, waterCrystal, waterCrystal], basicRuneCost);

//Earth Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(earthRune);
mods.botania.RuneAltar.addRecipe(earthRune, [manaPowder, manaSteel, earthShard, earthCrystal, earthCrystal, earthCrystal], basicRuneCost);

//Air Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(airRune);
mods.botania.RuneAltar.addRecipe(airRune, [manaPowder, manaSteel, airShard, airCrystal, airCrystal, airCrystal], basicRuneCost);

//Fire Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(fireRune);
mods.botania.RuneAltar.addRecipe(fireRune, [manaPowder, manaSteel, fireShard, fireCrystal, fireCrystal, fireCrystal], basicRuneCost);

//Order Rune
mods.botania.RuneAltar.addRecipe(orderRune, [manaPowder, manaSteel, orderShard, orderCrystal, orderCrystal, orderCrystal], basicRuneCost);

//Entropy Rune
mods.botania.RuneAltar.addRecipe(entropyRune, [manaPowder, manaSteel, entropyShard, entropyCrystal, entropyCrystal, entropyCrystal], basicRuneCost);

//Mana Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(manaRune);
mods.botania.RuneAltar.addRecipe(manaRune, [manaPowder, manaSteel, manaSteel, manaSteel, balancedShard, anyCrystal, anyCrystal, anyCrystal], basicRuneCost);

//Spring Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(springRune);
mods.botania.RuneAltar.addRecipe(springRune, [waterRune, fireRune, entropyRune, springCrystal, springCrystal], advancedRuneCost);

//Summer Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(summerRune);
mods.botania.RuneAltar.addRecipe(summerRune, [earthRune, airRune, entropyRune, summerCrystal, summerCrystal], advancedRuneCost);

//Autumn Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(autumnRune);
mods.botania.RuneAltar.addRecipe(autumnRune, [fireRune, airRune, orderRune, autumnCrystal, autumnCrystal], advancedRuneCost);

//Winter Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(winterRune);
mods.botania.RuneAltar.addRecipe(winterRune, [waterRune, earthRune, orderRune, winterCrystal, winterCrystal], advancedRuneCost);

//Basic Research
Research.addResearch("BOTANY_START", "BOTANY", "herba 3, praecantatio 3, aqua 3", 0, -2 as int, 2, icon);
Research.setRound("BOTANY_START", true);
Research.setAutoUnlock("BOTANY_START", true);
Research.addPage("BOTANY_START", "tc.research_page.BOTANY_START.1");
game.setLocalization("en_US", "tc.research_name.BOTANY_START", "Flowers of Magic");
game.setLocalization("en_US", "tc.research_text.BOTANY_START", "Magical flowers");
game.setLocalization("en_US", "tc.research_page.BOTANY_START.1", "By exploring the world, you have stumbled upon flowers that seems out of this world. They seem to have light petals that can easily be removed from them, petals that seems to have magical properties you have yet to discover. But these flowers clearly are not mundane, despites what some may say, the magic of plants is clearly not like any others and seems to be constantly changing. <LINE> Welcome to Botany, the study of these mystical flowers, but it goes deeper than simple gardening, prepare yourself for that.");
Research.addCraftingPage("BOTANY_START", <Botania:petal>);

//Petal Apocatery
Research.addResearch("PETALALTAR", "BOTANY", "herba 3, praecantatio 3, aqua 3", 0, 0, 2, altar);
Research.setConcealed("PETALALTAR", true);
Research.addPage("PETALALTAR", "tc.research_page.PETALALTAR.1");
game.setLocalization("en_US", "tc.research_name.PETALALTAR", "Botanical Apocatery");
game.setLocalization("en_US", "tc.research_text.PETALALTAR", "Manipulating flower energy.");
game.setLocalization("en_US", "tc.research_page.PETALALTAR.1", "By researching the nature of the energy emitted by mystical flowers, you have discovered a way to infuse petals to create flowers that have magical properties. Infusing these mystical flowers requires them to be in a environment with the perfect conditions for the mystical flowers to florish and grow. To fullfill these requirements, you have created a very mundane device that will allow you to infuse petals together without issues.<LINE> The Petal Apocatery serves as a very simple infusion altar for plants, but it has its limits.");

recipes.remove(altar);
mods.botania.Lexicon.removePage("botania.entry.apothecary", 7);
Arcane.addShaped("PETALALTAR", altar, "terra 10, aqua 15", 
	[[arcaneSlab, petals, arcaneSlab],
	[null, arcaneBlock, null],
	[arcaneBlock, arcaneBlock, arcaneBlock]]
);
Research.addArcanePage("PETALALTAR", altar);
Research.addPrereq("PETALALTAR", "BOTANY_START", false);

Research.addPage("PETALALTAR", "tc.research_page.PETALALTAR.2");
game.setLocalization("en_US", "tc.research_page.PETALALTAR.2", "<IMG>botania:textures/gui/entries/apothecary.png:11:15:120:120:0.8</IMG>This block, when placed in the world and given some water (by use of a Water Bucket), will accept any Mystical Petals thrown at it, releasing their energies. Once you have set the correct petals in, throwing some Seeds in will finalize the proccess.");

Research.addPage("PETALALTAR", "tc.research_page.PETALALTAR.3");
game.setLocalization("en_US", "tc.research_page.PETALALTAR.3", "Instead of Water you can place Lava in the altar so it can serve as a brazier and incinerator, destroying any items that come in contact.<LINE>Furthermore, tossing in Vines also gives the block an overgrown visual.");

//Pure Daisy
Research.addResearch("PUREDAISY", "BOTANY", "herba 3, praecantatio 3, aqua 3", 0, 2, 2, pureDaisy);
Research.setConcealed("PUREDAISY", true);
Research.setRound("PUREDAISY", true);
Research.setStub("PUREDAISY", true);
Research.addPage("PUREDAISY", "tc.research_page.PUREDAISY.1");
Research.addSibling("PETALALTAR", "PUREDAISY");
game.setLocalization("en_US", "tc.research_name.PUREDAISY", "Pure Daisy");
game.setLocalization("en_US", "tc.research_text.PUREDAISY", "Purifying arcane stone with mystical energy.");
game.setLocalization("en_US", "tc.research_page.PUREDAISY.1", "By combining 4 Mystical White Flowers, you have created a flower that has the ability to purify arcane stone and arcane wood into something more pure. <LINE>To purify a block with this flower, you can simply place blocks around it and the flower will purify and infuse it with mystical energy giving you a result that seems to share some properties of the living. Because the mystical flower is able to regenerate the energy around it, it is self sufficient and doesnt need to be provided with anything.");
Research.addPrereq("PUREDAISY", "PETALALTAR", false);

PureDaisy.removeRecipe(<Botania:livingrock>);
PureDaisy.removeRecipe(<Botania:livingwood>);
PureDaisy.removeRecipe(<minecraft:cobblestone>);
PureDaisy.removeRecipe(<minecraft:sand>);
PureDaisy.removeRecipe(<minecraft:packed_ice>);
PureDaisy.removeRecipe(<minecraft:obsidian>);
PureDaisy.removeRecipe(<minecraft:snow>);
<ore:blockArcaneStone>.add(arcaneBlock);
<ore:blockArcaneWood>.add(arcaneWood);

PureDaisy.addRecipe(<ore:blockArcaneStone>, livingrock);
PureDaisy.addRecipe(<ore:blockArcaneWood>, livingwood);

//Mana
Research.addResearch("MANAINTRO", "BOTANY", "herba 3, auram 3", 0, 4, 2, creativeManaPool);
Research.setConcealed("MANAINTRO", true);
Research.setSecondary("MANAINTRO", true);
Research.addPage("MANAINTRO", "tc.research_page.MANAINTRO.1");
Research.addSibling("PETALALTAR", "MANAINTRO");
game.setLocalization("en_US", "tc.research_name.MANAINTRO", "An Introduction to Mana.");
game.setLocalization("en_US", "tc.research_text.MANAINTRO", "The magical energy of flowers.");
game.setLocalization("en_US", "tc.research_page.MANAINTRO.1", "Mana is an ethereal substance. In layman's terms, it is a form of mystical energy. Its sensorial existence is inconstant, and its color depends on the environment its put in. <LINE> Every Mystical flower seems to draw from mana and it seems to be the main fuel needed for them to function. As it seems that without Mana, the Mystical Flowers simply become mundane and powerless.");
Research.addPage("MANAINTRO", "tc.research_page.MANAINTRO.2");
game.setLocalization("en_US", "tc.research_page.MANAINTRO.2", "The first step towards making use of Mana is finding a way to generate it properly. For the moment you have found 2 flowers in which can produce mana passively. The daybloom is a flower that will generate mana passively if it has access to sunlight, its sibling flower; the nightshade works exactly the same but at nightime. Simply place these flowers in a place in which they are not obstructed with any blocks to the sky, and they will start working at their appropriate time. <LINE> Now that you have flowers that generate mana, you will need a way to transfer it out of the flower to make use of it. The Mana spreader will do exactly that.");
Research.addPage("MANAINTRO", "tc.research_page.MANAINTRO.3");
game.setLocalization("en_US", "tc.research_page.MANAINTRO.3", "The Mana Spreader is the most important component in manipulating Mana. This is the block that allows Mana to travel from point A to point B. When this block is placed on the ground, it'll face one of 6 basic directions. By holding shift-right on it with a Wand of the Forest, one can orient it to the opposite of where it was clicked. It can be pointed to other blocks with a wand in Bind Mode. The Mana Spreader has a small internal buffer of Mana, which will get filled by nearby Generating Flowers. This buffer can be viewed by looking at the Spreader with a Wand of the Forest. Note that the block needs to be right clicked with a wand to get accurate and adequate values.");

Research.addCraftingPage("MANAINTRO", manaWand);

recipes.remove(manaSpreader);
Arcane.addShaped("MANAINTRO", manaSpreader, "terra 5", [
	[livingwood, livingwood, livingwood],
	[gold, petals, nitor],
	[livingwood, livingwood, livingwood]]);
Research.addArcanePage("MANAINTRO", manaSpreader);

Research.addPage("MANAINTRO", "tc.research_page.MANAINTRO.4");
game.setLocalization("en_US", "tc.research_page.MANAINTRO.4", "The Mana Pool is, simply put, a storage of Mana. Mana can be inserted into it by usage of a Mana Spreader, and any adjacent Mana Spreaders will pull mana from it to increase their internal buffer automatically. <LINE> Tossing in some resources into a Mana Pool will cause them to get infused with Mana, turning them into more powerful forms.<br>A few examples are Iron Ingots or Mana Pearls. Mana reading for this block functions like the Mana Spreader. A Redstone Comparator can also output a signal based on the contents.");

recipes.remove(manaPool);
Arcane.addShaped("MANAINTRO", manaPool, "ordo 5", [
	[livingrock, null, livingrock],
	[livingrock, livingrock, livingrock]]);
Research.addArcanePage("MANAINTRO", manaPool);

Research.addPrereq("MANAINTRO", "PUREDAISY", false);

//Runic Matrix
Arcane.removeRecipe(runicMatrix);
Arcane.addShaped("INFUSION", runicMatrix, "ordo 40", [
	[arcaneBlock, manaRune, arcaneBlock],
	[manaRune, <Botania:seaLamp>, manaRune],
	[arcaneBlock, manaRune, arcaneBlock]]);
Research.refreshResearchRecipe("INFUSION");