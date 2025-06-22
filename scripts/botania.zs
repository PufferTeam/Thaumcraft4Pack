import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Research;
import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import mods.botania.Lexicon;
import mods.botania.ManaInfusion;

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
var livingrockSlab = <Botania:livingrock0Slab>;
var livingwood = <Botania:livingwood>;
var manaPowder = <Botania:manaResource:23>;
var manaPearl = <Botania:manaResource:1>;
var manaSteel = <Botania:manaResource>;
var manaSteelBlock = <Botania:storage>;
var manaDiamond = <Botania:manaResource:2>;
var petals = <Botania:petal:*>;
var altar = <Botania:altar>;
var manaPool = <Botania:pool>;
var manaPoolDiluted = <Botania:pool:2>;
var creativeManaPool = <Botania:pool:1>;
var manaWand = <Botania:twigWand>.withTag({color1: 0, color2: 0, boundTileZ: 0, boundTileX: 0, boundTileY: -1});
var manaSpreader = <Botania:spreader>;
var alchemyCatalyst = <Botania:alchemyCatalyst>;
val etherealEssence = <Thaumcraft:ItemWispEssence>;
var silverwood = <salisarcana:blockCustomPlank:1>;
var greatwood = <salisarcana:blockCustomPlank>;
var thaumium = <Thaumcraft:ItemResource:2>;
var runicAltar = <Botania:runeAltar>;
var seaHeart = <customitems:heart_of_the_sea>;
var bloodRune = <AWWayofTime:AlchemicalWizardrybloodRune>;

var pureDaisy = <Botania:specialFlower>.withTag({type: "puredaisy"});
var endoflame = <Botania:specialFlower>.withTag({type: "endoflame"});
var hydroangeas = <Botania:specialFlower>.withTag({type: "hydroangeas"});

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
Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(waterRune);
mods.botania.RuneAltar.addRecipe(waterRune, [manaPowder, manaSteel, waterShard, waterCrystal, waterCrystal, waterCrystal], basicRuneCost);

//Earth Rune
Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(earthRune);
mods.botania.RuneAltar.addRecipe(earthRune, [manaPowder, manaSteel, earthShard, earthCrystal, earthCrystal, earthCrystal], basicRuneCost);

//Air Rune
Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(airRune);
mods.botania.RuneAltar.addRecipe(airRune, [manaPowder, manaSteel, airShard, airCrystal, airCrystal, airCrystal], basicRuneCost);

//Fire Rune
Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(fireRune);
mods.botania.RuneAltar.addRecipe(fireRune, [manaPowder, manaSteel, fireShard, fireCrystal, fireCrystal, fireCrystal], basicRuneCost);

//Order Rune
mods.botania.RuneAltar.addRecipe(orderRune, [manaPowder, manaSteel, orderShard, orderCrystal, orderCrystal, orderCrystal], basicRuneCost);

//Entropy Rune
mods.botania.RuneAltar.addRecipe(entropyRune, [manaPowder, manaSteel, entropyShard, entropyCrystal, entropyCrystal, entropyCrystal], basicRuneCost);

//Mana Rune
Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(manaRune);
mods.botania.RuneAltar.addRecipe(manaRune, [manaPowder, manaSteel, manaSteel, manaSteel, balancedShard, anyCrystal, anyCrystal, anyCrystal], basicRuneCost);

//Spring Rune
Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(springRune);
mods.botania.RuneAltar.addRecipe(springRune, [waterRune, fireRune, entropyRune, springCrystal, springCrystal], advancedRuneCost);

//Summer Rune
Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(summerRune);
mods.botania.RuneAltar.addRecipe(summerRune, [earthRune, airRune, entropyRune, summerCrystal, summerCrystal], advancedRuneCost);

//Autumn Rune
Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(autumnRune);
mods.botania.RuneAltar.addRecipe(autumnRune, [fireRune, airRune, orderRune, autumnCrystal, autumnCrystal], advancedRuneCost);

//Winter Rune
Lexicon.removePage("botania.entry.runeAltar", 7);
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
Apothecary.removeRecipe("thermalily");
Apothecary.removeRecipe("arcanerose");
Apothecary.removeRecipe("munchdew");
Apothecary.removeRecipe("entropinnyum");
Apothecary.removeRecipe("kekimurus");
Apothecary.removeRecipe("gourmaryllis");
Apothecary.removeRecipe("narslimmus");
Apothecary.removeRecipe("spectrolus");
Apothecary.removeRecipe("rafflowsia");
Apothecary.removeRecipe("dandelifeon");
Apothecary.removeRecipe("jadedAmaranthus");
Apothecary.removeRecipe("bellethorn");
Apothecary.removeRecipe("exoflame");
Apothecary.removeRecipe("hyacidus");
Apothecary.removeRecipe("medumone");
Apothecary.removeRecipe("pollidisiac");
Apothecary.removeRecipe("clayconia");
Apothecary.removeRecipe("loonium");
Apothecary.removeRecipe("daffomill");
Apothecary.removeRecipe("vinculotus");
Apothecary.removeRecipe("spectranthemum");
Apothecary.removeRecipe("bubbell");
Apothecary.removeRecipe("solegnolia");

Research.addResearch("PETALALTAR", "BOTANY", "herba 3, praecantatio 3, aqua 3", 0, 0, 2, altar);
Research.setConcealed("PETALALTAR", true);
Research.addPage("PETALALTAR", "tc.research_page.PETALALTAR.1");
game.setLocalization("en_US", "tc.research_name.PETALALTAR", "Botanical Apocatery");
game.setLocalization("en_US", "tc.research_text.PETALALTAR", "Manipulating flower energy.");
game.setLocalization("en_US", "tc.research_page.PETALALTAR.1", "By researching the nature of the energy emitted by mystical flowers, you have discovered a way to infuse petals to create flowers that have magical properties. Infusing these mystical flowers requires them to be in a environment with the perfect conditions for the mystical flowers to florish and grow. To fullfill these requirements, you have created a very mundane device that will allow you to infuse petals together without issues.<LINE> The Petal Apocatery serves as a very simple infusion altar for plants, but it has its limits.");

recipes.remove(altar);
Lexicon.removePage("botania.entry.apothecary", 7);
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
Research.addResearch("MANAINTRO", "BOTANY", "herba 3, auram 3, aer 3", 0, 4, 2, creativeManaPool);
Research.setConcealed("MANAINTRO", true);
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

Lexicon.removePage("botania.entry.spreader", 6);
recipes.remove(manaSpreader);
Arcane.addShaped("MANAINTRO", manaSpreader, "terra 5", [
	[livingwood, livingwood, livingwood],
	[gold, petals, nitor],
	[livingwood, livingwood, livingwood]]);
Research.addArcanePage("MANAINTRO", manaSpreader);

Research.addPage("MANAINTRO", "tc.research_page.MANAINTRO.4");
game.setLocalization("en_US", "tc.research_page.MANAINTRO.4", "The Mana Pool is, simply put, a storage of Mana. Mana can be inserted into it by usage of a Mana Spreader, and any adjacent Mana Spreaders will pull mana from it to increase their internal buffer automatically. <LINE> Tossing in some resources into a Mana Pool will cause them to get infused with Mana, turning them into more powerful forms. A few examples are Iron Ingots or Mana Pearls. Mana reading for this block functions like the Mana Spreader. A Redstone Comparator can also output a signal based on the contents.");

Lexicon.removePage("botania.entry.pool", 2);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.removePage("botania.entry.pool", 5);
recipes.remove(manaPool);
Arcane.addShaped("MANAINTRO", manaPool, "ordo 5", [
	[livingrock, null, livingrock],
	[livingrock, livingrock, livingrock]]);
Research.addArcanePage("MANAINTRO", manaPool);

Lexicon.removePage("botania.entry.pool", 2);
recipes.remove(manaPoolDiluted);
Arcane.addShaped("MANAINTRO", manaPoolDiluted, "ordo 3", [
	[livingrockSlab, null, livingrockSlab],
	[livingrockSlab, livingrockSlab, livingrockSlab]]);

Research.addPrereq("MANAINTRO", "PUREDAISY", false);

//Endoflame
Research.addResearch("ENDOFLAME", "BOTANY", "herba 3, praecantatio 3, aqua 3", -2 as int, 5, 2, endoflame);
Research.setConcealed("ENDOFLAME", true);
Research.setRound("ENDOFLAME", true);
Research.setStub("ENDOFLAME", true);
Research.addPage("ENDOFLAME", "tc.research_page.ENDOFLAME.1");
Research.addSibling("MANAINTRO", "ENDOFLAME");
game.setLocalization("en_US", "tc.research_name.ENDOFLAME", "Endoflame");
game.setLocalization("en_US", "tc.research_text.ENDOFLAME", "Mana from fuel");
game.setLocalization("en_US", "tc.research_page.ENDOFLAME.1", "While the Daybloom is all well and good, a botanist requires more effective means of generating Mana. The Endoflame does that exactly, it will absorb any combustible items or blocks dropped on the nearby vicinity (albeit only one at a time) and burn through them to passively generate mana while the fuel lasts. <LINE> There's a few small caveats though, the Endoflame will not burn anything that returns a byproduct, an example are Lava Buckets, that have empty Buckets as a byproduct.");
Research.addPrereq("ENDOFLAME", "MANAINTRO", false);

//Hydroangeas
Research.addResearch("HYDROANGEAS", "BOTANY", "herba 3, praecantatio 3, aqua 3", -2 as int, 3, 2, hydroangeas);
Research.setConcealed("HYDROANGEAS", true);
Research.setRound("HYDROANGEAS", true);
Research.setStub("HYDROANGEAS", true);
Research.addPage("HYDROANGEAS", "tc.research_page.HYDROANGEAS.1");
Research.addSibling("MANAINTRO", "HYDROANGEAS");
game.setLocalization("en_US", "tc.research_name.HYDROANGEAS", "Hydroangeas");
game.setLocalization("en_US", "tc.research_text.HYDROANGEAS", "Mana from water");
game.setLocalization("en_US", "tc.research_page.HYDROANGEAS.1", "Hydroangeas act as a liquid based passive generator. They will suck up any Still Water in a 3x3 area around it, on the same height, creating Mana from it. The amount they produce is comparable to that of an Endoflame. They also seem to function faster during Rain. Hydroangeas are classified as passive flowers and as such will decay.");
Research.addPrereq("HYDROANGEAS", "MANAINTRO", false);

//Mana Alchemy
Research.addResearch("MANAALCHEMY", "BOTANY", "aqua 3, auram 3", 0, 6, 2, alchemyCatalyst);
Research.setConcealed("MANAINTRO", true);
Research.setSecondary("MANAALCHEMY", true);
Research.addPage("MANAALCHEMY", "tc.research_page.MANAALCHEMY.1");
game.setLocalization("en_US", "tc.research_name.MANAALCHEMY", "Alchemising with Mana");
game.setLocalization("en_US", "tc.research_text.MANAALCHEMY", "Exchange may or may not be equivalent");
game.setLocalization("en_US", "tc.research_page.MANAALCHEMY.1", "Mana is an extremely volatile substance, to a point that its complete properties and abilities are unknown. <LINE> One of them is known, though, by attaching an Alchemy Catalyst, created with a mixture of otherworldly materials to the bottom of a Mana Pool, it enables the pool to perform Alchemy.");

Lexicon.removePage("botania.entry.manaAlchemy", 1);
recipes.remove(alchemyCatalyst);
Arcane.addShaped("MANAALCHEMY", alchemyCatalyst, "terra 5, aqua 5, aer 5", [
	[livingrock, gold, livingrock],
	[etherealEssence, silverwood, etherealEssence],
	[livingrock, gold, livingrock]]);
Research.addArcanePage("MANAALCHEMY", alchemyCatalyst);

Research.addPrereq("MANAALCHEMY", "MANAINTRO", false);

ManaInfusion.removeRecipe(manaSteel);
ManaInfusion.removeRecipe(manaSteelBlock);
ManaInfusion.addInfusion(manaSteel, thaumium, 3000);

//Runic Altar
Research.addResearch("RUNICALTAR", "BOTANY", "praecantatio 3, ordo 3, permutatio 3", 2, 4, 2, runicAltar);
Research.setConcealed("RUNICALTAR", true);
Research.addPage("RUNICALTAR", "tc.research_page.RUNICALTAR.1");
game.setLocalization("en_US", "tc.research_name.RUNICALTAR", "Runic Altar");
game.setLocalization("en_US", "tc.research_text.RUNICALTAR", "Create runes for stronger flowers and items");
game.setLocalization("en_US", "tc.research_page.RUNICALTAR.1", "Runic creation is a rather important complex in the advancement of the botanical magics. Runes are extremely important components of complex magical devices or flora. In order to create these, one would require a Runic Altar. To utilize this Runic Altar, start by placing, via either a right click or simply tossing, the components to the rune you want to create.");
Research.addPage("RUNICALTAR", "tc.research_page.RUNICALTAR.2");
game.setLocalization("en_US", "tc.research_page.RUNICALTAR.2", "Proceed by pointing a Mana Spreader to the altar so that Mana transfer can occur. It should be apparent when the altar has received enough Mana. When that happens, just drop a piece of Livingrock on top of it, or right click with it, and use the wand on it again to collect your rune. <LINE> A total of 18 Runes exist. The most basic and elementary runes are named after the Six Elements. The intermediate runes are named after the Four Seasons, and the most advanced runes are named after the Seven Deadly Sins. A separate Rune of Mana also exists.");

Lexicon.removePage("botania.entry.runeAltar", 3);
recipes.remove(runicAltar);
Arcane.addShaped("RUNICALTAR", runicAltar, "ordo 10, perditio 10", [
	[livingrock, livingrock, livingrock],
	[livingrock, manaDiamond, livingrock],
	[manaSteel, manaSteel, manaSteel]]);
Research.addArcanePage("RUNICALTAR", runicAltar);

Research.addPrereq("RUNICALTAR", "MANAINTRO", false);

ManaInfusion.addAlchemy(seaHeart, manaPearl, 3000);

//Runic Matrix
Arcane.removeRecipe(runicMatrix);
Arcane.addShaped("INFUSION", runicMatrix, "ordo 40", [
	[bloodRune, manaRune, bloodRune],
	[manaRune, seaHeart, manaRune],
	[bloodRune, manaRune, bloodRune]]);
Research.refreshResearchRecipe("INFUSION");