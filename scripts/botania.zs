import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Research;

var arcaneBlock = <Thaumcraft:blockCosmeticSolid:6>;
var balancedShard = <Thaumcraft:ItemShard:6>;
var runicMatrix = <Thaumcraft:blockStoneDevice:2>;
var rune = <Botania:rune>;
var manaPowder = <Botania:manaResource:23>;
var manaPearl = <Botania:manaResource:1>;
var manaSteel = <Botania:manaResource>;

var emptyRune = <Botania:rune>;
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
mods.botania.RuneAltar.addRecipe(waterRune, [emptyRune, manaPowder, manaSteel, waterShard, waterCrystal, waterCrystal, waterCrystal], basicRuneCost);

//Earth Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(earthRune);
mods.botania.RuneAltar.addRecipe(earthRune, [emptyRune, manaPowder, manaSteel, earthShard, earthCrystal, earthCrystal, earthCrystal], basicRuneCost);

//Air Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(airRune);
mods.botania.RuneAltar.addRecipe(airRune, [emptyRune, manaPowder, manaSteel, airShard, airCrystal, airCrystal, airCrystal], basicRuneCost);

//Fire Rune
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 7);
mods.botania.RuneAltar.removeRecipe(fireRune);
mods.botania.RuneAltar.addRecipe(fireRune, [emptyRune, manaPowder, manaSteel, fireShard, fireCrystal, fireCrystal, fireCrystal], basicRuneCost);

//Order Rune
mods.botania.RuneAltar.addRecipe(orderRune, [emptyRune, manaPowder, manaSteel, orderShard, orderCrystal, orderCrystal, orderCrystal], basicRuneCost);

//Entropy Rune
mods.botania.RuneAltar.addRecipe(entropyRune, [emptyRune, manaPowder, manaSteel, entropyShard, entropyCrystal, entropyCrystal, entropyCrystal], basicRuneCost);

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

//Runic Matrix
mods.thaumcraft.Arcane.removeRecipe(runicMatrix);
mods.thaumcraft.Arcane.addShaped("INFUSION", runicMatrix, "ordo 40", [
	[arcaneBlock, balancedShard, arcaneBlock],
	[balancedShard, <Botania:seaLamp>, balancedShard],
	[arcaneBlock, balancedShard, arcaneBlock]]);
mods.thaumcraft.Research.refreshResearchRecipe("INFUSION");