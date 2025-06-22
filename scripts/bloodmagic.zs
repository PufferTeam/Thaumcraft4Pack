import mods.bloodmagic.Altar;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Research;

var arcaneBlock = <Thaumcraft:blockCosmeticSolid:6>;
var arcaneSlab = <Thaumcraft:blockCosmeticSlabStone>;
var arcaneWood = <customitems:arcane_wood_block>;
var blankSlate = <AWWayofTime:blankSlate>;

//temp
recipes.remove(<AWWayofTime:Altar>);

Altar.removeRecipe(blankSlate);
Altar.addRecipe(blankSlate, arcaneBlock, 1, 1000, 5, 5);