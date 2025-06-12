import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Research;

var arcaneBlock = <Thaumcraft:blockCosmeticSolid:6>;
var balancedShard = <Thaumcraft:ItemShard:6>;
var runicMatrix = <Thaumcraft:blockStoneDevice:2>;

//Research Tab
mods.thaumcraft.Research.addTab("BOTANY", "thaumcraft", "textures/misc/botania_tab.png");
game.setLocalization("en_US", "tc.research_category.BOTANY", "Botany");


//Runic Matrix
mods.thaumcraft.Arcane.removeRecipe(runicMatrix);
mods.thaumcraft.Arcane.addShaped("INFUSION", runicMatrix, "ordo 40", [
	[arcaneBlock, balancedShard, arcaneBlock],
	[balancedShard, <Botania:seaLamp>, balancedShard],
	[arcaneBlock, balancedShard, arcaneBlock]]);
mods.thaumcraft.Research.refreshResearchRecipe("INFUSION");