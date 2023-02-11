import mods.botania.RuneAltar;
import mods.botania.ManaInfusion;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;


/*
CHANGELOG - Symbiotic Botania-245 and Thaumcraft-4.2.3.5
Fixed basic Botania runes showing the incorrect recipe in the book (NEI had the correct recipe)
*/

/*
Botania tiers:
	tier 1 flowers
	runic alter
	alchemy catalyst
	tier 2 flowers
	elven
	conjuration catalyst
	gaia

Thaumcraft tiers:
	arcane worktable
	alchemy
	infusion
	golems
	eldritch

Tier 1: thaumcraft - arcane worktable
		botania - runic alter, alchemy catalyst, tier 1 flowers
Tier 2: thaumcraft - alchemy
Tier 3: thaumcraft - infusion
		botania - tier 2 flowers
Tier 4: botania - elven
Tier 5: thaumcraft - golems, eldritch
		botania - gaia


Botania recipe changes
----------------------------
Elven Mana Spreader: replaces mana petal with Nitor
Alchemy Catalyst: uses ethereal essences and silverwood
Conjuration Catalyst: uses ethereal essences and a purifying fluid bucket
Terrestrial Agglomeration Plate: uses a magic mirror + thaumium block
Redstone Root: greatwood/silverwood sapling + redstone dust
Mana Lens: uses mirrored glass (its easier to craft now)
Rune of air: uses air shard
Rune of water: uses water shard
Rune of fire: uses fire shard
Rune of earth: uses earth shard
Rune of mana: uses a balanced shard
Rune of spring: uses victus crystalized essence
Rune of summer: uses messis crystalized essence
Rune of autumn: uses mortuus crystalized essence
Rune of winter: uses gelum crystalized essence
Spark: uses nitor
Mana Pylons: uses a dragonstone
Crystal Bow: uses a bone bow
Terra Blade: uses a sword of the zephyr and the arcane infusion alter
Terra Shatterer: uses a pickaxe of the core and the arcane infusion alter
Terra Truncator: uses an axe of the stream and the arcane infusion alter
Natura Pylon: uses arcane infusion alter
Gaia Pylon: uses arcane infusion alter
Soujourner's Sash: uses dragonstone and the arcane infusion alter
Globetrotter's Sash: uses the arcane infusion alter
Terrasteel armor: requires void metal
Flugel Tiara: uses a thaumic harness and the arcane infusion alter


Thaumcraft recipe changes
----------------------------
Greatwood sapling: pasture seed + nightshade + any sapling
Silverwood sapling: pasture seed + daybloom + any sapling
Table: uses living wood
Nitor: glowstone in a mana pool
Alumentum: uses coal with an alchemy catalyst
Runic Matrix: uses a sea lantern
Arcane Bore: uses various mana lenses
Purifying Bath Salts: can be made with the conjuration catalyst with a ton of mana
Golem cores: uses pixie dust
Void Seed: uses terrasteel nuggets instead of seeds

*/


//VANILLA Items
val blazePowder = <minecraft:blaze_powder>;
val blazeRod = <minecraft:blaze_rod>;
val brewingStand = <minecraft:brewing_stand>;
val brick = <minecraft:brick>;
val coal = <minecraft:coal:0>;
val charcoal = <minecraft:coal:1>;
val emerald = <minecraft:emerald>;
val feather = <minecraft:feather>;
val glassPane = <minecraft:glass_pane>;
val glowstone = <minecraft:glowstone_dust>;
val glowstoneBlock = <minecraft:glowstone>;
val gold = <minecraft:gold_ingot>;
val lapisBlock = <minecraft:lapis_block>;
val redstone = <minecraft:redstone>;
val piston = <minecraft:piston>;
val saplings = <ore:treeSapling>;
val stone = <minecraft:stone>;


//BOTANIA Items
val alchemyCatalyst = <Botania:alchemyCatalyst>;
val conjurationCatalyst = <Botania:conjurationCatalyst>;
val crystalBow = <Botania:crystalBow>;
val daybloom = <Botania:specialFlower>.withTag({type: "daybloom"});
val dreamwood = <Botania:dreamwood>;
val dragonstone = <Botania:manaResource:9>;
val elementium = <Botania:manaResource:7>;
val elvenGatewayCore = <Botania:alfheimPortal>;
val elvenManaSpreader = <Botania:spreader:2>;
val enderAirBottle = <Botania:manaResource:15>;

val yellowFlower = <ore:mysticFlowerYellow>;
val redFlower = <ore:mysticFlowerRed>;
val orangeFlower = <ore:mysticFlowerOrange>;
val lightBlueFlower = <ore:mysticFlowerLightBlue>;
val blueFlower = <ore:mysticFlowerBlue>;
val cyanFlower = <ore:mysticFlowerCyan>;
val limeFlower = <ore:mysticFlowerLime>;
val greenFlower = <ore:mysticFlowerGreen>;
val magentaFlower = <ore:mysticFlowerMagenta>;
val purpleFlower = <ore:mysticFlowerPurple>;
val pinkFlower = <ore:mysticFlowerPink>;
val grayFlower = <ore:mysticFlowerGray>;
val lightGrayFlower = <ore:mysticFlowerLightGray>;
val blackFlower = <ore:mysticFlowerBlack>;
val whiteFlower = <ore:mysticFlowerWhite>;
val brownFlower = <ore:mysticFlowerBrown>;

val flugelTiara = <Botania:flightTiara>;
val gaiaSpirit = <Botania:manaResource:5>;
val glimmeringWhiteFlower = <Botania:shinyFlower:0>;
val globetrottersSash = <Botania:superTravelBelt>;
val livingrock = <Botania:livingrock>;
val livingwood = <Botania:livingwood>;
val livingwoodSlab = <Botania:livingwood1Slab>;
val livingwoodPlanks = <Botania:livingwood:1>;
val livingwoodTwig = <Botania:manaResource:3>;

val manaLens = <Botania:lens:0>;
val manaLensVelocity = <Botania:lens:1>;
val manaLensPotency = <Botania:lens:2>;
val manaLensResistance = <Botania:lens:3>;
val manaLensEfficiency = <Botania:lens:4>;
val manaLensBounce = <Botania:lens:5>;
val manaLensGravity = <Botania:lens:6>;
val manaLensBore = <Botania:lens:7>;
val manaLensDamaging = <Botania:lens:8>;
val manaLensPhantom = <Botania:lens:9>;
val manaLensMagnetizing = <Botania:lens:10>;
val manaLensEntropic = <Botania:lens:11>;
val manaLensInfluence = <Botania:lens:12>;
val manaLensWeight = <Botania:lens:13>;
val manaLensPaintslinger = <Botania:lens:14>;
val manaLensKindle = <Botania:lens:15>;
val manaLensForce = <Botania:lens:16>;
val manaLensFlash = <Botania:lens:17>;
val manaLensWarp = <Botania:lens:18>;

val manaDiamond = <Botania:manaResource:2>;
val manaInfusedString = <Botania:manaResource:16>;
val manaPearl = <Botania:manaResource:1>;
val manaPowder = <Botania:manaResource:23>;
val manaPylon = <Botania:pylon>;
val manaSteel = <Botania:manaResource>;
val manasteelHelmet = <Botania:manasteelHelm:*>;
val manasteelChestplate = <Botania:manasteelChest:*>;
val manasteelLeggings = <Botania:manasteelLegs:*>;
val manasteelBoots = <Botania:manasteelBoots:*>;
val metamorphicStones = <Botania:biomeStoneA:*>;
val naturaPylon = <Botania:pylon:1>;
val nightshade = <Botania:specialFlower>.withTag({type: "nightshade"});
val pastureSeed = <Botania:grassSeeds>;
val prismarineShard = <Botania:manaResource:10>;
val redstoneRoot = <Botania:manaResource:6>;

val gaiaPylon = <Botania:pylon:2>;

val waterRune = <Botania:rune>;
val fireRune = <Botania:rune:1>;
val earthRune = <Botania:rune:2>;
val airRune = <Botania:rune:3>;
val springRune = <Botania:rune:4>;
val summerRune = <Botania:rune:5>;
val autumnRune = <Botania:rune:6>;
val winterRune = <Botania:rune:7>;
val manaRune = <Botania:rune:8>;
val lustRune = <Botania:rune:9>;
val gluttonyRune = <Botania:rune:10>;
val greedRune = <Botania:rune:11>;
val slothRune = <Botania:rune:12>;
val wrathRune = <Botania:rune:13>;
val envyRune = <Botania:rune:14>;
val prideRune = <Botania:rune:15>;

val soujournersSash = <Botania:travelBelt>;
val spark = <Botania:spark>;
val terraShatterer = <Botania:terraPick>;
val terraBlade = <Botania:terraSword>;
val terraSteel = <Botania:manaResource:4>;
val terraSteelNugget = <Botania:manaResource:18>;
val terraSteelHelmet = <Botania:terrasteelHelm>;
val terraSteelChestplate = <Botania:terrasteelChest>;
val terraSteelLeggings = <Botania:terrasteelLegs>;
val terraSteelBoots = <Botania:terrasteelBoots>;
val terraTruncator = <Botania:terraAxe>;
val terrestrialAgglomerationPlate = <Botania:terraPlate>;
val thermalily = <Botania:specialFlower>.withTag({type: "thermalily"});
val pixieDust = <Botania:manaResource:8>;



//THAUMCRAFT Items
//list of all Thaumcraft research IDs: http://paste.ee/p/g82kJ
val alumentum = <Thaumcraft:ItemResource>;
val arcaneBore = <Thaumcraft:blockWoodenDevice:5>;
val arcaneLevitator = <Thaumcraft:blockLifter>;
val arcaneStoneBlock = <Thaumcraft:blockCosmeticSolid:6>;
val axeOfTheStream = <Thaumcraft:ItemAxeElemental:*>;
val amber = <Thaumcraft:ItemResource:6>;
val balancedShard = <Thaumcraft:ItemShard:6>;
val bathSalt = <Thaumcraft:ItemBathSalts>;
val boneBow = <Thaumcraft:ItemBowBone:*>;
val bootsOfTheTraveler = <Thaumcraft:BootsTraveller:*>;
val bucketPurifyingFluid = <Thaumcraft:ItemBucketPure>;


val gelumCrystallizedEssence = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "gelum"}]});
val mortuusCrystallizedEssence = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "mortuus"}]});
val victusCrystallizedEssence = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "victus"}]});
val messisCrystallizedEssence = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "messis"}]});


val essentiaMirror = <Thaumcraft:blockMirror:6>;
val etherealEssence = <Thaumcraft:ItemWispEssence>;
val golemAnimationCore = <Thaumcraft:ItemGolemCore:100>;
val greatwoodPlanks = <Thaumcraft:blockWoodenDevice:6>;
val greatwoodSapling = <Thaumcraft:blockCustomPlant>;
val lampOfGrowth = <Thaumcraft:blockMetalDevice:8>;
val magicMirror = <Thaumcraft:blockMirror>;
val magicTallow = <Thaumcraft:ItemResource:4>;
val mirroredGlass = <Thaumcraft:ItemResource:10>;
val mundaneBelt = <Thaumcraft:ItemBaubleBlanks:2>;
val nitor = <Thaumcraft:ItemResource:1>;
val thaumiumBlock = <Thaumcraft:blockCosmeticSolid:4>;
val thaumcraftPlants = <Thaumcraft:blockCustomPlant:*>;	//silverwood/greatwood sapling, shimmerleaf, cinderpearl, ethereal bloom, vishroom
val thaumostaticHarness = <Thaumcraft:HoverHarness:*>;
val wardedGlass = <Thaumcraft:blockCosmeticOpaque:2>;
val quicksilver = <Thaumcraft:ItemResource:3>;
val runicMatrix = <Thaumcraft:blockStoneDevice:2>;
val salisMundus = <Thaumcraft:ItemResource:14>;
val seaLantern = <Botania:seaLamp>;

val shards = <Thaumcraft:ItemShard:*>;
val airShard = <Thaumcraft:ItemShard:0>;
val fireShard = <Thaumcraft:ItemShard:1>;
val waterShard = <Thaumcraft:ItemShard:2>;
val earthShard = <Thaumcraft:ItemShard:3>;
val orderShard = <Thaumcraft:ItemShard:4>;
val entropyShard = <Thaumcraft:ItemShard:5>;

val quicksilverNugget = <Thaumcraft:ItemNugget:5>;
val silverwoodPlank = <Thaumcraft:blockWoodenDevice:7>;
val silverwoodSapling = <Thaumcraft:blockCustomPlant:1>;
val swordOfTheZephyr = <Thaumcraft:ItemSwordElemental:*>;
val table = <Thaumcraft:blockTable>;
val pickaxeOfTheCore = <Thaumcraft:ItemPickaxeElemental:*>;
val voidMetal = <Thaumcraft:ItemResource:16>;
val voidMetalSeed = <Thaumcraft:ItemResource:17>;

//BOTANIA
mods.botania.Lexicon.removePage("botania.entry.dreamwoodSpreader", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.dreamwoodSpreader1", "botania.entry.dreamwoodSpreader", 1, [elvenManaSpreader], [
	[[dreamwood, dreamwood, dreamwood],
	[elementium, nitor, null],
	[dreamwood, dreamwood, dreamwood]]]);
recipes.remove(elvenManaSpreader);
recipes.addShaped(elvenManaSpreader, [
	[dreamwood, dreamwood, dreamwood],
	[elementium, nitor, null],
	[dreamwood, dreamwood, dreamwood]]);

mods.botania.Lexicon.removePage("botania.entry.manaAlchemy", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.manaAlchemy1", "botania.entry.manaAlchemy", 1, [alchemyCatalyst], [
	[[livingrock, gold, livingrock],
	[etherealEssence, silverwoodPlank, etherealEssence],
	[livingrock, gold, livingrock]]]);
recipes.remove(alchemyCatalyst);
recipes.addShaped(alchemyCatalyst, [
	[livingrock, gold, livingrock],
	[etherealEssence, silverwoodPlank, etherealEssence],
	[livingrock, gold, livingrock]]);

mods.botania.Lexicon.removePage("botania.entry.manaConjuration", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.manaConjuration1", "botania.entry.manaConjuration", 1, [conjurationCatalyst], [
	[[livingrock, bucketPurifyingFluid, livingrock],
	[etherealEssence, alchemyCatalyst, etherealEssence],
	[livingrock, dragonstone, livingrock]]]);
recipes.remove(conjurationCatalyst);
recipes.addShaped(conjurationCatalyst, [
	[livingrock, bucketPurifyingFluid, livingrock],
	[etherealEssence, alchemyCatalyst, etherealEssence],
	[livingrock, dragonstone, livingrock]]);

mods.botania.Lexicon.removePage("botania.entry.terrasteel", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.terrasteel1", "botania.entry.terrasteel", 1, [terrestrialAgglomerationPlate], [
	[[lapisBlock, lapisBlock, lapisBlock],
	[waterRune, essentiaMirror, fireRune],
	[earthRune, manaRune, airRune]]]);
recipes.remove(terrestrialAgglomerationPlate);
recipes.addShaped(terrestrialAgglomerationPlate, [
	[lapisBlock, lapisBlock, lapisBlock],
	[waterRune, essentiaMirror, fireRune],
	[earthRune, manaRune, airRune]]);

mods.botania.Lexicon.removePage("botania.entry.fIntro", 4);
mods.botania.Lexicon.addCraftingPage("botania.page.fIntro4", "botania.entry.fIntro", 4, [redstoneRoot], [[[<Thaumcraft:blockCustomPlant:0>, redstone]]]);	//using "thaumcraftPlants" didn't rotate the icon, it stayed on Greatwood Sapling
mods.botania.Lexicon.addCraftingPage("botania.page.fIntro4", "botania.entry.fIntro", 5, [redstoneRoot], [[[<Thaumcraft:blockCustomPlant:1>, redstone]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.fIntro4", "botania.entry.fIntro", 6, [redstoneRoot], [[[<Thaumcraft:blockCustomPlant:2>, redstone]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.fIntro4", "botania.entry.fIntro", 7, [redstoneRoot], [[[<Thaumcraft:blockCustomPlant:3>, redstone]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.fIntro4", "botania.entry.fIntro", 8, [redstoneRoot], [[[<Thaumcraft:blockCustomPlant:4>, redstone]]]);
mods.botania.Lexicon.addCraftingPage("botania.page.fIntro4", "botania.entry.fIntro", 9, [redstoneRoot], [[[<Thaumcraft:blockCustomPlant:5>, redstone]]]);
recipes.remove(redstoneRoot);
recipes.addShapeless(redstoneRoot, [thaumcraftPlants, redstone]);

mods.botania.Lexicon.removePage("botania.entry.lens", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.lens1", "botania.entry.lens", 1, [manaLens], [[[manaSteel, mirroredGlass, manaSteel]]]);
recipes.remove(manaLens);
recipes.addShaped(manaLens, [
	[manaSteel, mirroredGlass, manaSteel]]);

mods.botania.Lexicon.removePage("botania.entry.crystalBow", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.crystalBow1", "botania.entry.crystalBow", 1, [crystalBow], [
	[[null, dragonstone, manaInfusedString],
	[boneBow, null, manaInfusedString],
	[null, dragonstone, manaInfusedString]]]);
recipes.remove(crystalBow);
recipes.addShaped(crystalBow, [
	[null, dragonstone, manaInfusedString],
	[boneBow, null, manaInfusedString],
	[null, dragonstone, manaInfusedString]]);

mods.botania.Lexicon.removePage("botania.entry.sparks", 2);
mods.botania.Lexicon.addCraftingPage("botania.page.sparks2", "botania.entry.sparks", 2, [spark], [
	[[blazePowder, nitor, blazePowder]]]);
recipes.remove(spark);
recipes.addShaped(spark, [[blazePowder, nitor, blazePowder]]);

mods.botania.Lexicon.removePage("botania.entry.terrasteelArmor", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.terrasteelArmor1", "botania.entry.terrasteelArmor", 1, [terraSteelHelmet], [
	[[livingwoodTwig, springRune, livingwoodTwig],
	[terraSteel, manasteelHelmet, terraSteel],
	[null, voidMetal, null]]]);
recipes.remove(terraSteelHelmet);
recipes.addShaped(terraSteelHelmet, [
	[livingwoodTwig, springRune, livingwoodTwig],
	[terraSteel, manasteelHelmet, terraSteel],
	[null, voidMetal, null]]);

mods.botania.Lexicon.removePage("botania.entry.terrasteelArmor", 2);
mods.botania.Lexicon.addCraftingPage("botania.page.terrasteelArmor2", "botania.entry.terrasteelArmor", 2, [terraSteelChestplate], [
	[[livingwoodTwig, summerRune, livingwoodTwig],
	[terraSteel, manasteelChestplate, terraSteel],
	[null, voidMetal, null]]]);
recipes.remove(terraSteelChestplate);
recipes.addShaped(terraSteelChestplate, [
	[livingwoodTwig, summerRune, livingwoodTwig],
	[terraSteel, manasteelChestplate, terraSteel],
	[null, voidMetal, null]]);

mods.botania.Lexicon.removePage("botania.entry.terrasteelArmor", 3);
mods.botania.Lexicon.addCraftingPage("botania.page.terrasteelArmor3", "botania.entry.terrasteelArmor", 3, [terraSteelLeggings], [
	[[livingwoodTwig, autumnRune, livingwoodTwig],
	[terraSteel, manasteelLeggings, terraSteel],
	[null, voidMetal, null]]]);
recipes.remove(terraSteelLeggings);
recipes.addShaped(terraSteelLeggings, [
	[livingwoodTwig, autumnRune, livingwoodTwig],
	[terraSteel, manasteelLeggings, terraSteel],
	[null, voidMetal, null]]);

mods.botania.Lexicon.removePage("botania.entry.terrasteelArmor", 4);
mods.botania.Lexicon.addCraftingPage("botania.page.terrasteelArmor4", "botania.entry.terrasteelArmor", 4, [terraSteelBoots], [
	[[livingwoodTwig, winterRune, livingwoodTwig],
	[terraSteel, manasteelBoots, terraSteel],
	[null, voidMetal, null]]]);
recipes.remove(terraSteelBoots);
recipes.addShaped(terraSteelBoots, [
	[livingwoodTwig, winterRune, livingwoodTwig],
	[terraSteel, manasteelBoots, terraSteel],
	[null, voidMetal, null]]);


mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar4", "botania.entry.runeAltar", 7, [waterRune * 2], [[manaPowder, manaSteel, waterShard]], [5000]);
mods.botania.RuneAltar.removeRecipe(waterRune);
mods.botania.RuneAltar.addRecipe(waterRune * 2, [manaPowder, manaSteel, waterShard], 5000);

mods.botania.Lexicon.removePage("botania.entry.runeAltar", 8);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar5", "botania.entry.runeAltar", 8, [earthRune * 2], [[manaPowder, manaSteel, earthShard]], [5000]);
mods.botania.RuneAltar.removeRecipe(earthRune);
mods.botania.RuneAltar.addRecipe(earthRune * 2, [manaPowder, manaSteel, earthShard], 5000);

mods.botania.Lexicon.removePage("botania.entry.runeAltar", 9);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar6", "botania.entry.runeAltar", 9, [airRune * 2], [[manaPowder, manaSteel, airShard]], [5000]);
mods.botania.RuneAltar.removeRecipe(airRune);
mods.botania.RuneAltar.addRecipe(airRune * 2, [manaPowder, manaSteel, airShard], 5000);

mods.botania.Lexicon.removePage("botania.entry.runeAltar", 10);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar7", "botania.entry.runeAltar", 10, [fireRune * 2], [[manaPowder, manaSteel, fireShard]], [5000]);
mods.botania.RuneAltar.removeRecipe(fireRune);
mods.botania.RuneAltar.addRecipe(fireRune * 2, [manaPowder, manaSteel, fireShard], 5000);


mods.botania.Lexicon.removePage("botania.entry.runeAltar", 11);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar8", "botania.entry.runeAltar", 11, [springRune], [[victusCrystallizedEssence, waterRune, fireRune]], [8000]);
mods.botania.RuneAltar.removeRecipe(springRune);
mods.botania.RuneAltar.addRecipe(springRune, [victusCrystallizedEssence, waterRune, fireRune], 8000);

mods.botania.Lexicon.removePage("botania.entry.runeAltar", 12);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar9", "botania.entry.runeAltar", 12, [summerRune], [[messisCrystallizedEssence, waterRune, fireRune]], [8000]);
mods.botania.RuneAltar.removeRecipe(summerRune);
mods.botania.RuneAltar.addRecipe(summerRune, [messisCrystallizedEssence, earthRune, airRune], 8000);

mods.botania.Lexicon.removePage("botania.entry.runeAltar", 13);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar10", "botania.entry.runeAltar", 13, [autumnRune], [[mortuusCrystallizedEssence, waterRune, fireRune]], [8000]);
mods.botania.RuneAltar.removeRecipe(autumnRune);
mods.botania.RuneAltar.addRecipe(autumnRune, [mortuusCrystallizedEssence, fireRune, airRune], 8000);

mods.botania.Lexicon.removePage("botania.entry.runeAltar", 14);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar11", "botania.entry.runeAltar", 14, [winterRune], [[gelumCrystallizedEssence, waterRune, fireRune]], [8000]);
mods.botania.RuneAltar.removeRecipe(winterRune);
mods.botania.RuneAltar.addRecipe(winterRune, [gelumCrystallizedEssence, waterRune, earthRune], 8000);


mods.botania.Lexicon.removePage("botania.entry.runeAltar", 15);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar12", "botania.entry.runeAltar", 15, [manaRune], [[balancedShard, manaSteel, manaSteel, manaSteel, manaSteel, manaSteel]], [8000]);
mods.botania.RuneAltar.removeRecipe(manaRune); 
mods.botania.RuneAltar.addRecipe(manaRune, [balancedShard, manaSteel, manaSteel, manaSteel, manaSteel, manaSteel], 8000);

mods.botania.Lexicon.addConjurationPage("botania.page.manaConjuration12", "botania.entry.manaConjuration", 12, [bathSalt * 2], [bathSalt], [250000]);
game.setLocalization("en_US", "botania.page.manaConjuration12", "Conjuring &1Purifying Bath Salts&0");
mods.botania.ManaInfusion.addConjuration(bathSalt * 2, bathSalt, 250000);	//250,000 is half a mana pool






//THAUMCRAFT


recipes.remove(table);
recipes.addShaped(table, [
	[livingwoodSlab, livingwoodSlab, livingwoodSlab],
	[livingwoodPlanks, null, livingwoodPlanks]]);
mods.thaumcraft.Research.refreshResearchRecipe("TABLE");


mods.botania.Lexicon.addCraftingPage("botania.page.nightshade2", "botania.entry.nightshade", 2, [greatwoodSapling], [[[pastureSeed, silverwoodSapling]]]);
game.setLocalization("en_US", "botania.page.nightshade2", "Creating &1Greatwood Saplings&0");
recipes.addShapeless(greatwoodSapling, [pastureSeed, silverwoodSapling]);

mods.botania.Lexicon.addCraftingPage("botania.page.daybloom3", "botania.entry.daybloom", 3, [silverwoodSapling], [[[pastureSeed, greatwoodSapling]]]);
game.setLocalization("en_US", "botania.page.daybloom3", "Creating &1Silverwood Saplings&0");
recipes.addShapeless(silverwoodSapling, [pastureSeed, greatwoodSapling]);

mods.thaumcraft.Arcane.removeRecipe(mirroredGlass);
mods.thaumcraft.Arcane.addShapeless("BASICARTIFACE", mirroredGlass, "ordo 5", 
	[quicksilverNugget, glassPane]);
mods.thaumcraft.Research.refreshResearchRecipe("BASICARTIFACE");

mods.thaumcraft.Arcane.removeRecipe(runicMatrix);
mods.thaumcraft.Arcane.addShaped("INFUSION", runicMatrix, "ordo 40", [
	[arcaneStoneBlock, shards, arcaneStoneBlock],
	[shards, seaLantern, shards],
	[arcaneStoneBlock, shards, arcaneStoneBlock]]);
mods.thaumcraft.Research.refreshResearchRecipe("INFUSION");

mods.botania.Lexicon.removePage("botania.entry.pylon", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.pylon1", "botania.entry.pylon", 1, [manaPylon], [
	[[null, gold, null],
	[manaSteel, manaDiamond, manaSteel],
	[null, gold, null]]]);
game.setLocalization("en_US", "botania.page.pylon1", "Made at the &lInfusion Altar&0 with a &1Mana Diamond&0");
recipes.remove(manaPylon);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", manaDiamond, [gold, manaSteel, gold, manaSteel], "terra 16", manaPylon, 1);

mods.botania.Lexicon.removePage("botania.entry.aIntro", 3);
mods.botania.Lexicon.addCraftingPage("botania.page.aIntro3", "botania.entry.aIntro", 3, [naturaPylon], [
	[[null, terraSteelNugget, null],
	[null, manaPylon, null],
	[terraSteelNugget, null, terraSteelNugget]]]);
game.setLocalization("en_US", "botania.page.aIntro3", "Made at the &lInfusion Altar&0 with a &1Mana Pylon&0");
recipes.remove(naturaPylon);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", manaPylon, [terraSteelNugget, terraSteelNugget, terraSteelNugget], "terra 64, arbor 64, fabrico 16, lucrum 8", naturaPylon, 4);

mods.botania.Lexicon.removePage("botania.entry.gaiaRitual", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.gaiaRitual1", "botania.entry.gaiaRitual", 1, [gaiaPylon], [
	[[null, elementium, null],
	[pixieDust, manaPylon, pixieDust],
	[null, elementium, null]]]);
game.setLocalization("en_US", "botania.page.gaiaRitual1", "Made at the &lInfusion Altar&0 with a &1Mana Pylon&0");
recipes.remove(gaiaPylon);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", manaPylon, [elementium, pixieDust, elementium, pixieDust], "herba 32, arbor 32, auram 8", gaiaPylon, 7);

mods.botania.Lexicon.removePage("botania.entry.travelBelt", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.travelBelt1", "botania.entry.travelBelt", 1, [soujournersSash], [
	[[null, dragonstone, null],
	[null, mundaneBelt, null],
	[earthRune, null, airRune]]]);
game.setLocalization("en_US", "botania.page.travelBelt1", "Made at the &lInfusion Altar&0 with a &1Mundane Belt&0");
recipes.remove(soujournersSash);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", mundaneBelt, [dragonstone, earthRune, airRune], "motus 32, iter 16", soujournersSash, 7);

mods.botania.Lexicon.removePage("botania.entry.superTravelBelt", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.superTravelBelt1", "botania.entry.superTravelBelt", 1, [globetrottersSash], [
	[[feather, gaiaSpirit, feather],
	[null, soujournersSash, null],
	[elementium, elementium, elementium]]]);
game.setLocalization("en_US", "botania.page.superTravelBelt1", "Made at the &lInfusion Altar&0 with a &1Soujourner's Sash&0");
recipes.remove(globetrottersSash);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", soujournersSash, [gaiaSpirit, elementium, feather, emerald, feather, elementium], "volatus 16, aer 32, iter 32", globetrottersSash, 8);

mods.botania.Lexicon.removePage("botania.entry.terraSword", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.terraSword1", "botania.entry.terraSword", 1, [terraBlade], [
	[[terraSteel, terraSteel, null],
	[null, swordOfTheZephyr, null],
	[null, null, null]]]);
game.setLocalization("en_US", "botania.page.terraSword1", "Made at the &lInfusion Altar&0 w/ &1Sword of the Zephyr&0");
recipes.remove(terraBlade);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", swordOfTheZephyr, [terraSteel, terraSteel], "terra 128, telum 32, praecantatio 16", terraBlade, 7);

mods.botania.Lexicon.removePage("botania.entry.terraPick", 5);
mods.botania.Lexicon.addCraftingPage("botania.page.terraPick5", "botania.entry.terraPick", 5, [terraShatterer], [
	[[null, terraSteel, null],
	[null, pickaxeOfTheCore, null],
	[terraSteel, null, terraSteel]]]);
game.setLocalization("en_US", "botania.page.terraPick5", "Made at the &lInfusion Altar&0 w/ &1Pickaxe of the Core&0");
recipes.remove(terraShatterer);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", pickaxeOfTheCore, [terraSteel, terraSteel, terraSteel], "terra 128, perfodio 32, praecantatio 16", terraShatterer, 7);

mods.botania.Lexicon.removePage("botania.entry.terraAxe", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.terraAxe1", "botania.entry.terraAxe", 1, [terraTruncator], [
	[[null, terraSteel, null],
	[terraSteel, axeOfTheStream, terraSteel],
	[null, glowstoneBlock, null]]]);
game.setLocalization("en_US", "botania.page.terraAxe1", "Made at the &lInfusion Altar&0 with &1Axe of the Stream&0");
recipes.remove(terraTruncator);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", axeOfTheStream, [glowstoneBlock, terraSteel, terraSteel, terraSteel], "terra 128, arbor 64, instrumentum 32", terraTruncator, 7);

mods.botania.Lexicon.removePage("botania.entry.flightTiara", 4);
mods.botania.Lexicon.addCraftingPage("botania.page.flightTiara1", "botania.entry.flightTiara", 4, [flugelTiara], [
	[[null, enderAirBottle, null],
	[gaiaSpirit, thaumostaticHarness, gaiaSpirit],
	[null, gaiaSpirit, null]]]);
game.setLocalization("en_US", "botania.page.flightTiara1", "Made at &lInfusion Altar&0 w/ &1Thaumostatic Harness&0");
recipes.remove(flugelTiara);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", thaumostaticHarness, [enderAirBottle, gaiaSpirit, gaiaSpirit, gaiaSpirit], "volatus 32, sensus 32, potentia 32", flugelTiara, 9);

mods.thaumcraft.Infusion.removeRecipe(arcaneBore);
mods.thaumcraft.Infusion.addRecipe("ARCANEBORE", piston, [greatwoodPlanks, greatwoodPlanks, manaLensBore, manaLensPhantom, manaLensForce], "perfodio 16, machina 16, lux 8", arcaneBore, 1);
mods.thaumcraft.Research.refreshResearchRecipe("ARCANEBORE");

mods.thaumcraft.Crucible.removeRecipe(voidMetalSeed);
mods.thaumcraft.Crucible.addRecipe("ELDRITCHMINOR", voidMetalSeed, terraSteelNugget, "alienis 2, tenebrae 8, vacuos 8");
mods.thaumcraft.Research.refreshResearchRecipe("ELDRITCHMINOR");

//mods.thaumcraft.Research.orphanResearch("ENCHANTER");
//mods.thaumcraft.Research.removeResearch("ENCHANTER");

mods.thaumcraft.Infusion.removeRecipe(<ThaumicTinkerer:enchanter>);
mods.thaumcraft.Infusion.addRecipe("ENCHANTER", <minecraft:enchanting_table>, [<TaintedMagic:ItemMaterial:6>, <TaintedMagic:ItemMaterial:6>, <ThaumicTinkerer:spellCloth>, <Thaumcraft:ItemResource:15>], "praecantatio 50, alienis 40, potentia 30, machina 30, cognitio 10", <ThaumicTinkerer:enchanter>, 23);
mods.thaumcraft.Research.refreshResearchRecipe("ENCHANTER");

//mods.thaumcraft.Research.orphanResearch("TTENCH_AUTO_SMELT");
//mods.thaumcraft.Research.removeResearch("TTENCH_AUTO_SMELT");

//mods.thaumcraft.Research.orphanResearch("TTENCH_FINAL");
//mods.thaumcraft.Research.removeResearch("TTENCH_FINAL");

//mods.thaumcraft.Research.orphanResearch("TTENCH_TUNNEL");
//mods.thaumcraft.Research.removeResearch("TTENCH_TUNNEL");

//mods.thaumcraft.Research.orphanResearch("TTENCH_SHATTER");
//mods.thaumcraft.Research.removeResearch("TTENCH_SHATTER");

//mods.thaumcraft.Research.orphanResearch("TTENCH_SLOW_FALL");
//mods.thaumcraft.Research.removeResearch("TTENCH_SLOW_FALL");

//mods.thaumcraft.Research.orphanResearch("TTENCH_DISPERSED");
//mods.thaumcraft.Research.removeResearch("TTENCH_DISPERSED");

//mods.thaumcraft.Research.orphanResearch("TTENCH_ASCENT_BOOST");
//mods.thaumcraft.Research.removeResearch("TTENCH_ASCENT_BOOST");

//mods.thaumcraft.Research.orphanResearch("TTENCH_DESINTEGRATE");
//mods.thaumcraft.Research.removeResearch("TTENCH_DESINTEGRATE");

//mods.thaumcraft.Research.orphanResearch("TTENCH_POUNCE");
//mods.thaumcraft.Research.removeResearch("TTENCH_POUNCE");

//mods.thaumcraft.Research.orphanResearch("TTENCH_QUICK_DRAW");
//mods.thaumcraft.Research.removeResearch("TTENCH_QUICK_DRAW");

//mods.thaumcraft.Research.orphanResearch("TTENCH_VAMPIRISM");
//mods.thaumcraft.Research.removeResearch("TTENCH_VAMPIRISM");

//mods.thaumcraft.Research.orphanResearch("TTENCH_FOCUSED");
//mods.thaumcraft.Research.removeResearch("TTENCH_FOCUSED");

//mods.thaumcraft.Research.orphanResearch("TTENCH_SHOCKWAVE");
//mods.thaumcraft.Research.removeResearch("TTENCH_SHOCKWAVE");

//mods.thaumcraft.Research.orphanResearch("TTENCH_VALIANCE");
//mods.thaumcraft.Research.removeResearch("TTENCH_VALIANCE");

recipes.removeShaped(<Botania:terrasteelHelmReveal>);


//THAUMCRAFT RESEARCH NODES

mods.thaumcraft.Research.addResearch("SYMBIOTICBOTANIAINFUSION", "ARTIFICE", "terra 1, herba 1, arbor 1, praecantatio 1", -4 as int, 6, 8, <Botania:pylon>);
//mods.thaumcraft.Research.setSpikey("SYMBIOTICBOTANIAINFUSION", true);
mods.thaumcraft.Research.setConcealed("SYMBIOTICBOTANIAINFUSION", true);
mods.thaumcraft.Research.setSecondary("SYMBIOTICBOTANIAINFUSION", true);
mods.thaumcraft.Research.addPage("SYMBIOTICBOTANIAINFUSION", "tc.research_page.SYMBIOTICBOTANIAINFUSION.1");
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", manaPylon);
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", naturaPylon);
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", gaiaPylon);
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", soujournersSash);
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", globetrottersSash);
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", terraBlade);
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", terraShatterer);
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", terraTruncator);
mods.thaumcraft.Research.addInfusionPage("SYMBIOTICBOTANIAINFUSION", flugelTiara);
game.setLocalization("en_US", "tc.research_name.SYMBIOTICBOTANIAINFUSION", "Botania Infusion");
game.setLocalization("en_US", "tc.research_text.SYMBIOTICBOTANIAINFUSION", "I hope you have lots of Terra");
game.setLocalization("en_US", "tc.research_page.SYMBIOTICBOTANIAINFUSION.1", "Being able to infuse essentia into Botanical items seems like a good idea.<BR>Cause why not.");



//mods.thaumcraft.Research.addPrereq("SYMBIOTICBOTANIA", "BASICS", false);	//this causes a crash
mods.thaumcraft.Research.addPrereq("SYMBIOTICBOTANIAINFUSION", "INFUSION", false);

