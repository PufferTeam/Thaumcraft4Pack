import mods.thaumcraft.Arcane;
import mods.thaumcraft.Research;

var arcaneBlock = <Thaumcraft:blockCosmeticSolid:6>;
var arcaneSlab = <Thaumcraft:blockCosmeticSlabStone>;
var arcaneWood = <customitems:arcane_wood_block>;
var arcaneDoor = <Thaumcraft:ItemArcaneDoor>;
var arcanePressurePlate = <Thaumcraft:blockWoodenDevice:2>;
var arcaneGlass = <Thaumcraft:blockCosmeticOpaque:2>;
var arcaneBellows = <Thaumcraft:blockWoodenDevice>;
var furnaceBlock = <minecraft:furnace>;
var alchemicalFurnace = <Thaumcraft:blockStoneDevice>;
var alchemicalBoiler = <Automagy:blockBoiler>;
var alchemicalConstruct = <Thaumcraft:blockMetalDevice:9>;
var tube = <Thaumcraft:blockTube>;
var crystallizer = <Thaumcraft:blockTube:7>;
var crucible = <Thaumcraft:blockMetalDevice>;
var shards = <Thaumcraft:ItemShard:*>;
var levitator = <Thaumcraft:blockLifter>;
var magicWood = <salisarcana:blockCustomPlank:*>;
var mirroredGlass = <Thaumcraft:ItemResource:10>;
var nitor = <Thaumcraft:ItemResource:1>;
var leather = <minecraft:leather>;
var glass = <minecraft:glass>;
var manaPane = <Botania:manaGlassPane>;
var iron = <minecraft:iron_ingot>;
var copper = <ThermalFoundation:material:64>;
var tin = <ThermalFoundation:material:65>;
var silver = <ThermalFoundation:material:66>;
var lead = <ThermalFoundation:material:67>;
var thaumium = <Thaumcraft:ItemResource:2>;
var brain = <Thaumcraft:ItemZombieBrain>;
var cinnabar = <ThermalFoundation:material:20>;
var cinnabarCluster = <Thaumcraft:ItemNugget:21>;
var quicksilver = <Thaumcraft:ItemResource:3>;

var balancedShard = <Thaumcraft:ItemShard:6>;
var airShard = <Thaumcraft:ItemShard>;
var fireShard = <Thaumcraft:ItemShard:1>;
var waterShard = <Thaumcraft:ItemShard:2>;
var earthShard = <Thaumcraft:ItemShard:3>;
var orderShard = <Thaumcraft:ItemShard:4>;
var entropyShard = <Thaumcraft:ItemShard:5>;

furnace.remove(quicksilver);
furnace.addRecipe(quicksilver, cinnabar);
furnace.addRecipe(quicksilver * 2, cinnabarCluster);

Arcane.removeRecipe(mirroredGlass);
Arcane.addShapeless("BASICARTIFACE", mirroredGlass, "ordo 5", 
	[quicksilver, silver, manaPane]
);
Research.refreshResearchRecipe("BASICARTIFACE");

Arcane.addShaped("ARCANESTONE", arcaneWood * 9, "terra 1, ignis 1", 
	[[magicWood, magicWood, magicWood],
	[magicWood, shards, magicWood],
	[magicWood, magicWood, magicWood]]
);
Research.addArcanePage("ARCANESTONE", arcaneWood);

Arcane.removeRecipe(levitator);
Arcane.addShaped("LEVITATOR", levitator, "aer 10, terra 5", 
	[[arcaneWood, earthShard, arcaneWood],
	[iron, nitor, iron],
	[arcaneWood, airShard, arcaneWood]]
);
Research.refreshResearchRecipe("LEVITATOR");

Arcane.removeRecipe(arcaneDoor);
Arcane.addShaped("WARDEDARCANA", arcaneDoor, "aqua 20, ordo 10, terra 10, ignis 5", 
	[[thaumium, arcaneWood, thaumium],
	[arcaneWood, brain, arcaneWood],
	[thaumium, arcaneWood, thaumium]]
);
Arcane.removeRecipe(arcanePressurePlate);
Arcane.addShaped("WARDEDARCANA", arcanePressurePlate, "aqua 5, ordo 10, terra 5, ignis 5", 
	[[null, brain, null],
	[thaumium, arcaneWood, thaumium]]
);
Arcane.removeRecipe(arcaneGlass);
Arcane.addShaped("WARDEDARCANA", arcaneGlass * 8, "aqua 5, ordo 10, terra 5, ignis 5", 
	[[glass, glass, glass],
	[arcaneWood, brain, arcaneWood],
	[glass, glass, glass]]
);
Research.refreshResearchRecipe("WARDEDARCANA");

Arcane.removeRecipe(arcaneBellows);
Arcane.addShaped("BELLOWS", arcaneBellows, "aer 10, ordo 5", 
	[[arcaneWood, arcaneWood, tin],
	[leather, airShard, iron],
	[arcaneWood, arcaneWood, tin]]
);
Research.refreshResearchRecipe("BELLOWS");

Arcane.removeRecipe(alchemicalFurnace);
Arcane.addShaped("DISTILESSENTIA", alchemicalFurnace, "ignis 5, aqua 5", 
	[[silver, crucible, silver],
	[lead, furnaceBlock, lead],
	[arcaneBlock, lead, arcaneBlock]]
);

Research.refreshResearchRecipe("DISTILESSENTIA");

Arcane.removeRecipe(alchemicalBoiler);
Arcane.addShaped("ALCHEMYBOILER", alchemicalBoiler, "ignis 5, aqua 7", 
	[[copper, crucible, copper],
	[lead, furnaceBlock, lead],
	[arcaneBlock, silver, arcaneBlock]]
);
Research.refreshResearchRecipe("ALCHEMYBOILER");

Arcane.removeRecipe(crystallizer);
Arcane.addShaped("ESSENTIACRYSTAL", crystallizer, "terra 15, aqua 5, ordo 5", 
	[[silver, <minecraft:dispenser>, silver],
	[balancedShard, alchemicalConstruct, balancedShard],
	[arcaneWood, tube, arcaneWood]]
);
Research.refreshResearchRecipe("ESSENTIACRYSTAL");