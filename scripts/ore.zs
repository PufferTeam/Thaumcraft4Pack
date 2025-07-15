import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.data.IData;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.BlastFurnace;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Research;
import mods.witchinggadgets.InfernalBlastfurnace;

var none = <etfuturum:barrier>;

furnace.addRecipe(<ImmersiveEngineering:metal:7>, none);
InfernalBlastfurnace.removeRecipe(<ImmersiveEngineering:metal:1>);
Crucible.removeRecipe(<WitchingGadgets:item.WG_Cluster>);
Crucible.removeRecipe(<WitchingGadgets:item.WG_Cluster:7>);
Crucible.removeRecipe(<WitchingGadgets:item.WG_Cluster:39>);
Crucible.removeRecipe(<WitchingGadgets:item.WG_Cluster:37>);
function ore(name as IData, items as IItemStack[], ores as IItemStack[], type as IData[], bonus as IItemStack, tier as IData, research_key as IData[], elements as IData[]) {
    //Crafting
    //-------------

    //Dust
    if(type[6] == 1) {
        //Remove Dust
        Crusher.removeRecipe(items[3]);
    }

    //Ingot
    if(type[4] == 1) {
        //Remove Ingot Arc Furnace
        ArcFurnace.removeRecipe(items[1]);

        //Remove Ingot Furnace
        furnace.remove(items[1]);
    }

    //Ore
    if(type[0] == 1) {
        //Remove Ore
        recipes.remove(ores[0]);

        //Ingot
        if(type[4] == 1) {
            //Ore To Ingot
            furnace.addRecipe(items[1], ores[0]);

            //Ore To Ingot
            ArcFurnace.addRecipe(items[1], ores[0], <materialis:gem:1>, 20, 512, [], "Ores");
        }

        //Raw Ore Block
        if(type[1] == 1) {
            //Remove Raw Ore Block
            recipes.remove(ores[1]);

            //9 Raw Ore to Raw Ore Block
            recipes.addShapeless(ores[1], [ores[0], ores[0], ores[0], ores[0], ores[0], ores[0], ores[0], ores[0], ores[0]]);

            //Raw Ore Block to 9 Raw Ore
            recipes.addShapeless(ores[0] * 9, [ores[1]]);
        }

        //Cluster
        if(type[2] == 1) {
            //Remove cluster recipe
            InfernalBlastfurnace.removeRecipe(items[1]);

            //Cluster Recipe
            Crucible.removeRecipe(ores[2]);
            Crucible.addRecipe(research_key[0], ores[2], ores[0], elements[0]);
            Research.refreshResearchRecipe(research_key[0]);

            //TRANS
            Crucible.addRecipe(research_key[1], items[2] * 3, items[2], elements[1]);
            Research.addCruciblePage(research_key[1], items[2]);

            //CRUSH
            Crucible.addRecipe(research_key[2], items[3], items[1], elements[2]);
            Research.addCruciblePage(research_key[2], items[3]);

            //Dust
            if(type[6] == 1) {
                //Pure Ore to Dust + BONUS
                Crusher.addRecipe(items[3] * 3, ores[2], 3600, bonus, 0.25);
            }

            //Nugget
            if(type[5] == 1) {
                furnace.addRecipe(items[1] * 2, ores[2]);
            }

            //Arc Furnace
            ArcFurnace.addRecipe(items[1] * 2, ores[2], <materialis:gem:1>, 20, 512, [], "Ores");
        }

        //Dust
        if(type[6] == 1) {
            //Ore To Dust
            Crusher.addRecipe(items[3] * 2, ores[0], 3600);
        }

    }

    //Ingot
    if(type[4] == 1) {
        //Remove Ingot
        recipes.remove(items[1]);

        //Block
        if(type[3] == 1) {
            //Remove Block
            recipes.remove(items[0]);

            //9 Ingots to Block
            recipes.addShapeless(items[0], [items[1], items[1], items[1], items[1], items[1], items[1], items[1], items[1], items[1]]);

            //Block To 9 Ingots
            recipes.addShapeless(items[1] * 9, [items[0]]);
        }

        //Nugget
        if(type[5] == 1) {
            //Remove Nugget
            recipes.remove(items[2]);

            //9 Nuggets to 1 Ingot
            recipes.addShapeless(items[1], [items[2], items[2], items[2], items[2], items[2], items[2], items[2], items[2], items[2]]);

            //Ingot to 9 Nuggets
            recipes.addShapeless(items[2] * 9, [items[1]]);
        }

        //Dust
        if(type[6] == 1) {
            //Nugget
            if(type[5] == 1 && type[0] == 1) {
                //Dust To Ingot + Nugget Bonus
                InfernalBlastfurnace.addRecipe(items[1], items[3], 200, null, false);
            }

            if(type[5] == 1 && type[0] == 0) {
                InfernalBlastfurnace.addRecipe(items[1], items[3], 200, null, false);
            }

            //Ingot To Dust
            ArcFurnace.addRecipe(items[1], items[3], null, 100, 512);
            Crusher.addRecipe(items[3], items[1], 3600);
        }

        //Plate
        if(type[7] == 1) {
            //Remove Plate
            recipes.remove(items[4]);

            //Ingot To Plate
            MetalPress.removeRecipe(items[4]);
            MetalPress.addRecipe(items[4], items[1], <ImmersiveEngineering:mold>, 500);
        }

        //Gear
        if(type[8] == 1) {
            //Remove Gear
            recipes.remove(items[5]);

            //Ingot To Gear
            MetalPress.removeRecipe(items[5]);
            MetalPress.addRecipe(items[5], items[1] * 4, <ImmersiveEngineering:mold:1>, 500);
        }

        //Rod
        if(type[9] == 1) {
            recipes.remove(items[6]);

            //Ingot To Gear
            MetalPress.removeRecipe(items[6]);
            MetalPress.addRecipe(items[6] * 2, items[1], <ImmersiveEngineering:mold:2>, 500); 
        }
    }
}

//[raw_ore, raw_ore_block, cluster, block, ingot, nugget, dust, plate, gear, rod]
//    0          1            2       3      4      5      6      7     8     9

//[block, ingot, nugget, dust, plate, gear, rod]
//   0      1      2      3      4     5     6

ore('iron', [<minecraft:iron_block>, <minecraft:iron_ingot>, <Thaumcraft:ItemNugget>, <materialis:dust>, <materialis:plate>, <materialis:gear>, <ImmersiveEngineering:material:14>], [<etfuturum:raw_ore:1>, <etfuturum:raw_ore_block:1>, <Thaumcraft:ItemNugget:16>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], <materialis:dust:6>, 1, ["PUREIRON", "TRANSIRON", "CRUSHIRON"], ["metallum 2, terra 1, ordo 1", "metallum 2, terra 1", "perditio 1"]);
ore('gold', [<minecraft:gold_block>, <minecraft:gold_ingot>, <minecraft:gold_nugget>, <materialis:dust:1>, <materialis:plate:1>, <materialis:gear:1>, none], [<etfuturum:raw_ore:2>, <etfuturum:raw_ore_block:2>, <Thaumcraft:ItemNugget:31>], [1, 1, 1, 1, 1, 1, 1, 0, 1, 0], <materialis:gem>, 1, ["PUREGOLD", "TRANSGOLD", "CRUSHGOLD"], ["metallum 2, ordo 1, perditio 1", "metallum 2, lucrum 1", "perditio 1"]);
ore('copper', [<materialis:block>, <materialis:ingot:2>, <materialis:nugget:2>, <materialis:dust:2>, <materialis:plate:2>, <materialis:gear:2>, none], [<etfuturum:raw_ore:0>, <etfuturum:raw_ore_block:0>, <Thaumcraft:ItemNugget:17>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 0], <materialis:dust:1>, 1, ["PURECOPPER", "TRANSCOPPER", "CRUSHCOPPER"], ["metallum 2, ordo 1, perditio 1", "metallum 2, permutatio 1", "perditio 1"]);
ore('tin', [<materialis:block:1>, <materialis:ingot:3>, <materialis:nugget:3>, <materialis:dust:3>, <materialis:plate:3>, <materialis:gear:3>, none], [<etfuturum:modded_raw_ore:1>, <etfuturum:modded_raw_ore_block:1>, <Thaumcraft:ItemNugget:18>], [1, 1, 1, 1, 1, 1, 1, 0, 1, 0], <materialis:dust>, 1, ["PURETIN", "TRANSTIN", "CRUSHTIN"], ["metallum 2, ordo 1, perditio 1", "metallum 2, vitreus 1", "perditio 1"]);
ore('silver', [<materialis:block:2>, <materialis:ingot:4>, <materialis:nugget:4>, <materialis:dust:4>, <materialis:plate:4>, <materialis:gear:4>, none], [<etfuturum:modded_raw_ore:2>, <etfuturum:modded_raw_ore_block:2>, <Thaumcraft:ItemNugget:19>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 0], <materialis:dust:5>, 1, ["PURESILVER", "TRANSSILVER", "CRUSHSILVER"], ["metallum 2, ordo 1, perditio 1", "metallum 2, lucrum 1", "perditio 1"]);
ore('lead', [<materialis:block:3>, <materialis:ingot:5>, <materialis:nugget:5>, <materialis:dust:5>, <materialis:plate:5>, <materialis:gear:5>, none], [<etfuturum:modded_raw_ore:3>, <etfuturum:modded_raw_ore_block:3>, <Thaumcraft:ItemNugget:20>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 0], <materialis:dust:4>, 1, ["PURELEAD", "TRANSLEAD", "CRUSHLEAD"], ["metallum 2, ordo 1, perditio 1", "metallum 2, ordo 1", "perditio 1"]);
ore('nickel', [<materialis:block:4>, <materialis:ingot:6>, <materialis:nugget:6>, <materialis:dust:6>, <materialis:plate:6>, <materialis:gear:6>, none], [<etfuturum:modded_raw_ore:4>, <etfuturum:modded_raw_ore_block:4>, <WitchingGadgets:item.WG_Cluster:3>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 0], <materialis:dust:11>, 2, ["PURENICKEL", "TRANSNICKEL", "CRUSHNICKEL"], ["metallum 2, ordo 1, perditio 1", "metallum 2, terra 1", "perditio 1"]);
ore('aluminum', [<ImmersiveEngineering:storage:1>, <materialis:ingot:13>, <materialis:nugget:13>, <materialis:dust:13>, <materialis:plate:13>, <materialis:gear:13>, <ImmersiveEngineering:material:16>], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 1, 0, 1], none, -1, [], []);
ore('platinum', [<materialis:block:9>, <materialis:ingot:11>, <materialis:nugget:11>, <materialis:dust:11>, <materialis:plate:11>, <materialis:gear:11>, none], [<etfuturum:modded_raw_ore:5>, <etfuturum:modded_raw_ore_block:5>, none], [1, 1, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);

ore('electrum', [<materialis:block:6>, <materialis:ingot:8>, <materialis:nugget:8>, <materialis:dust:8>, <materialis:plate:8>, <materialis:gear:8>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 1, 1, 0], none, -1, [], []);
ore('constantan', [<materialis:block:8>, <materialis:ingot:10>, <materialis:nugget:10>, <materialis:dust:10>, <materialis:plate:10>, <materialis:gear:10>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 1, 0, 0], none, -1, [], []);
ore('steel', [<ImmersiveEngineering:storage:7>, <materialis:ingot:12>, <materialis:nugget:12>, <materialis:dust:12>, <materialis:plate:12>, <materialis:gear:12>, <ImmersiveEngineering:material:15>], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 1, 0, 1], none, -1, [], []);
ore('bronze', [<materialis:block:5>, <materialis:ingot:7>, <materialis:nugget:7>, <materialis:dust:7>, <materialis:plate:7>, <materialis:gear:7>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);
ore('invar', [<materialis:block:7>, <materialis:ingot:9>, <materialis:nugget:9>, <materialis:dust:9>, <materialis:plate:9>, <materialis:gear:9>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);
ore('pig_iron', [none, <ImmersiveEngineering:metal>, <ImmersiveEngineering:metal:22>, <ImmersiveEngineering:metal:10>, none, none, none], [none, none, none], [0, 0, 0, 0, 1, 1, 1, 0, 0, 0], none, -1, [], []);

//Unused IE Ingots
InfernalBlastfurnace.removeRecipe(<ImmersiveEngineering:metal:3>);
InfernalBlastfurnace.removeRecipe(<ImmersiveEngineering:metal:2>);
InfernalBlastfurnace.removeRecipe(<ImmersiveEngineering:metal:4>);

//Iron Processing
//Pig Iron
BlastFurnace.removeFuel(<minecraft:coal:1>);
BlastFurnace.removeFuel(<ImmersiveEngineering:stoneDevice:3>);
BlastFurnace.removeRecipe(<ImmersiveEngineering:metal:7>);
BlastFurnace.removeRecipe(<ImmersiveEngineering:storage:7>);
InfernalBlastfurnace.removeRecipe(<ImmersiveEngineering:metal:7>);
InfernalBlastfurnace.removeRecipe(<ImmersiveEngineering:storage:7>);
InfernalBlastfurnace.removeRecipe(<ImmersiveEngineering:metal:0>);
ArcFurnace.removeRecipe(<ImmersiveEngineering:metal:0>);
ArcFurnace.removeRecipe(<ImmersiveEngineering:metal:7>);
BlastFurnace.addRecipe(<ImmersiveEngineering:metal>, <Mekanism:EnrichedIron>, 1200, <materialis:gem:1>);
InfernalBlastfurnace.addRecipe(<ImmersiveEngineering:metal:7>, <ImmersiveEngineering:metal>, 500, null, true);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal>, <Mekanism:EnrichedIron>, <materialis:gem:1>, 400, 512, [<ImmersiveEngineering:metal:17>], "Alloying");

//Bronze
recipes.remove(<materialis:dust:7>);
recipes.addShapeless(<materialis:dust:7> * 4, [<materialis:dust:3>, <materialis:dust:2>, <materialis:dust:2>, <materialis:dust:2>]);
ArcFurnace.addRecipe(<materialis:dust:7> * 4, <materialis:dust:3>, null, 100, 512, [<materialis:dust:2>, <materialis:dust:2>, <materialis:dust:2>], "Alloying");

//Electrum
recipes.remove(<materialis:dust:8>);
recipes.addShapeless(<materialis:dust:8> * 2, [<materialis:dust:1>, <materialis:dust:4>]);
ArcFurnace.addRecipe(<materialis:dust:8> * 2, <materialis:dust:1>, null, 100, 512, [<materialis:dust:4>], "Alloying");

//Invar
recipes.remove(<materialis:dust:9>);
recipes.addShapeless(<materialis:dust:9> * 3, [<materialis:dust>, <materialis:dust>, <materialis:dust:6>]);
ArcFurnace.addRecipe(<materialis:dust:9> * 3, <materialis:dust>, null, 100, 512, [<materialis:dust>, <materialis:dust:6>], "Alloying");

//Constantan
recipes.remove(<materialis:dust:10>);
recipes.addShapeless(<materialis:dust:10> * 2, [<materialis:dust:2>, <materialis:dust:6>]);
ArcFurnace.addRecipe(<materialis:dust:10> * 2, <materialis:dust:2>, null, 100, 512, [<materialis:dust:6>], "Alloying");

function recycling(name as IData, items as IItemStack[], outputs as IItemStack[], ingotValue as IData[], nuggetValue as IData[]) {    
    for i, item in items {
        if(ingotValue[i] != 0 && nuggetValue[i] == 0) {
		    ArcFurnace.addRecipe(outputs[0] * ingotValue[i], item, null, 100, 512, [], "Recycling");
        }
        if(ingotValue[i] == 0 && nuggetValue[i] != 0) {
		    ArcFurnace.addRecipe(outputs[1] * nuggetValue[i], item, null, 100, 512, [], "Recycling");
        }
        if(ingotValue[i] != 0 && nuggetValue[i] != 0) {
		    ArcFurnace.addRecipe(outputs[0] * ingotValue[i], item, null, 100, 512, [outputs[1] * nuggetValue[i]], "Recycling");
        }
	}
}