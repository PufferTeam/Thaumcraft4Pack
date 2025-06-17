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
InfernalBlastfurnace.removeRecipe(<ThermalFoundation:material:69>);
Crucible.removeRecipe(<WitchingGadgets:item.WG_Cluster:7>);
Crucible.removeRecipe(<WitchingGadgets:item.WG_Cluster:39>);
InfernalBlastfurnace.removeRecipe(<ThermalFoundation:material:70>);
Crucible.removeRecipe(<WitchingGadgets:item.WG_Cluster:24>);
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
            ArcFurnace.addRecipe(items[1], ores[0], <ImmersiveEngineering:material:13>, 20, 512, [], "Ores");
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
            ArcFurnace.addRecipe(items[1] * 2, ores[2], <ImmersiveEngineering:material:13>, 20, 512, [], "Ores");
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

ore('iron', [<minecraft:iron_block>, <minecraft:iron_ingot>, <Thaumcraft:ItemNugget>, <ThermalFoundation:material:0>, <ImmersiveEngineering:metal:30>, <ThermalFoundation:material:12>, <ImmersiveEngineering:material:14>], [<etfuturum:raw_ore:1>, <etfuturum:raw_ore_block:1>, <Thaumcraft:ItemNugget:16>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], <ThermalFoundation:material:36>, 1, ["PUREIRON", "TRANSIRON", "CRUSHIRON"], ["metallum 2, terra 1, ordo 1", "metallum 2, terra 1", "perditio 1"]);
ore('gold', [<minecraft:gold_block>, <minecraft:gold_ingot>, <minecraft:gold_nugget>, <ThermalFoundation:material:1>, none, <ThermalFoundation:material:13>, none], [<etfuturum:raw_ore:2>, <etfuturum:raw_ore_block:2>, <Thaumcraft:ItemNugget:31>], [1, 1, 1, 1, 1, 1, 1, 0, 1, 0], <ThermalFoundation:material:20>, 1, ["PUREGOLD", "TRANSGOLD", "CRUSHGOLD"], ["metallum 2, ordo 1, perditio 1", "metallum 2, lucrum 1", "perditio 1"]);
ore('copper', [<ThermalFoundation:Storage:0>, <ThermalFoundation:material:64>, <ThermalFoundation:material:96>, <ThermalFoundation:material:32>, <ImmersiveEngineering:metal:31>, <ThermalFoundation:material:128>, none], [<etfuturum:raw_ore:0>, <etfuturum:raw_ore_block:0>, <Thaumcraft:ItemNugget:17>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 0], <ImmersiveEngineering:metal:9>, 1, ["PURECOPPER", "TRANSCOPPER", "CRUSHCOPPER"], ["metallum 2, ordo 1, perditio 1", "metallum 2, permutatio 1", "perditio 1"]);
ore('tin', [<ThermalFoundation:Storage:1>, <ThermalFoundation:material:65>, <ThermalFoundation:material:97>, <ThermalFoundation:material:33>, none, <ThermalFoundation:material:129>, none], [<etfuturum:modded_raw_ore:1>, <etfuturum:modded_raw_ore_block:1>, <Thaumcraft:ItemNugget:18>], [1, 1, 1, 1, 1, 1, 1, 0, 1, 0], <ThermalFoundation:material:0>, 1, ["PURETIN", "TRANSTIN", "CRUSHTIN"], ["metallum 2, ordo 1, perditio 1", "metallum 2, vitreus 1", "perditio 1"]);
ore('silver', [<ThermalFoundation:Storage:2>, <ThermalFoundation:material:66>, <ThermalFoundation:material:98>, <ThermalFoundation:material:34>, <ImmersiveEngineering:metal:34>, <ThermalFoundation:material:130>, none], [<etfuturum:modded_raw_ore:2>, <etfuturum:modded_raw_ore_block:2>, <Thaumcraft:ItemNugget:19>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 0], <ThermalFoundation:material:35>, 1, ["PURESILVER", "TRANSSILVER", "CRUSHSILVER"], ["metallum 2, ordo 1, perditio 1", "metallum 2, lucrum 1", "perditio 1"]);
ore('lead', [<ThermalFoundation:Storage:3>, <ThermalFoundation:material:67>, <ThermalFoundation:material:99>, <ThermalFoundation:material:35>, <ImmersiveEngineering:metal:33>, <ThermalFoundation:material:131>, none], [<etfuturum:modded_raw_ore:3>, <etfuturum:modded_raw_ore_block:3>, <Thaumcraft:ItemNugget:20>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 0], <ThermalFoundation:material:34>, 1, ["PURELEAD", "TRANSLEAD", "CRUSHLEAD"], ["metallum 2, ordo 1, perditio 1", "metallum 2, ordo 1", "perditio 1"]);
ore('nickel', [<ThermalFoundation:Storage:4>, <ThermalFoundation:material:68>, <ThermalFoundation:material:100>, <ThermalFoundation:material:36>, <ImmersiveEngineering:metal:35>, <ThermalFoundation:material:132>, none], [<etfuturum:modded_raw_ore:4>, <etfuturum:modded_raw_ore_block:4>, <WitchingGadgets:item.WG_Cluster:3>], [1, 1, 1, 1, 1, 1, 1, 1, 1, 0], <ThermalFoundation:material:37>, 2, ["PURENICKEL", "TRANSNICKEL", "CRUSHNICKEL"], ["metallum 2, ordo 1, perditio 1", "metallum 2, terra 1", "perditio 1"]);
ore('aluminum', [<ImmersiveEngineering:storage:1>, <ImmersiveEngineering:metal:1>, <ImmersiveEngineering:metal:23>, <ImmersiveEngineering:metal:11>, <ImmersiveEngineering:metal:32>, none, <ImmersiveEngineering:material:16>], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 1, 0, 1], none, -1, [], []);
ore('platinum', [<ThermalFoundation:Storage:5>, <ThermalFoundation:material:69>, <ThermalFoundation:material:101>, <ThermalFoundation:material:37>, none, <ThermalFoundation:material:133>, none], [<etfuturum:modded_raw_ore:5>, <etfuturum:modded_raw_ore_block:5>, none], [1, 1, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);
ore('mythril', [<ThermalFoundation:Storage:6>, <ThermalFoundation:material:70>, <ThermalFoundation:material:102>, <ThermalFoundation:material:38>, none, <ThermalFoundation:material:134>, none], [<etfuturum:modded_raw_ore:6>, <etfuturum:modded_raw_ore_block:6>, none], [1, 1, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);

ore('electrum', [<ThermalFoundation:Storage:7>, <ThermalFoundation:material:71>, <ThermalFoundation:material:103>, <ThermalFoundation:material:39>, <ImmersiveEngineering:metal:37>, <ThermalFoundation:material:135>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 1, 1, 0], none, -1, [], []);
ore('constantan', [<ImmersiveEngineering:storage:5>, <ImmersiveEngineering:metal:5>, <ImmersiveEngineering:metal:27>, <ImmersiveEngineering:metal:15>, <ImmersiveEngineering:metal:36>, none, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 1, 0, 0], none, -1, [], []);
ore('steel', [<ImmersiveEngineering:storage:7>, <ImmersiveEngineering:metal:7>, <ImmersiveEngineering:metal:29>, <ImmersiveEngineering:metal:16>, <ImmersiveEngineering:metal:38>, none, <ImmersiveEngineering:material:15>], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 1, 0, 1], none, -1, [], []);
ore('bronze', [<ThermalFoundation:Storage:9>, <ThermalFoundation:material:73>, <ThermalFoundation:material:105>, <ThermalFoundation:material:41>, none, <ThermalFoundation:material:137>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);
ore('invar', [<ThermalFoundation:Storage:8>, <ThermalFoundation:material:72>, <ThermalFoundation:material:104>, <ThermalFoundation:material:40>, none, <ThermalFoundation:material:136>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);
ore('signalum', [<ThermalFoundation:Storage:10>, <ThermalFoundation:material:74>, <ThermalFoundation:material:106>, <ThermalFoundation:material:42>, none, <ThermalFoundation:material:138>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);
ore('lumium', [<ThermalFoundation:Storage:11>, <ThermalFoundation:material:75>, <ThermalFoundation:material:107>, <ThermalFoundation:material:43>, none, <ThermalFoundation:material:139>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);
ore('enderium', [<ThermalFoundation:Storage:12>, <ThermalFoundation:material:76>, <ThermalFoundation:material:108>, <ThermalFoundation:material:44>, none, <ThermalFoundation:material:140>, none], [none, none, none], [0, 0, 0, 1, 1, 1, 1, 0, 1, 0], none, -1, [], []);
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
BlastFurnace.addRecipe(<ImmersiveEngineering:metal>, <Mekanism:EnrichedIron>, 1200, <ImmersiveEngineering:material:13>);
InfernalBlastfurnace.addRecipe(<ImmersiveEngineering:metal:7>, <ImmersiveEngineering:metal>, 500, null, true);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal>, <Mekanism:EnrichedIron>, <ImmersiveEngineering:material:13>, 400, 512, [<ImmersiveEngineering:metal:17>], "Alloying");

//Bronze
recipes.remove(<ThermalFoundation:material:41>);
Arcane.addShapeless("ALLOYBASIC", <ThermalFoundation:material:41> * 4, "ordo 1", [<ThermalFoundation:material:32>, <ThermalFoundation:material:32>, <ThermalFoundation:material:32>, <ThermalFoundation:material:33>]);
Research.addArcanePage("ALLOYBASIC", <ThermalFoundation:material:41>);
ArcFurnace.addRecipe(<ThermalFoundation:material:41> * 4, <ThermalFoundation:material:33>, null, 100, 512, [<ThermalFoundation:material:32>, <ThermalFoundation:material:32>, <ThermalFoundation:material:32>], "Alloying");

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

recycling('iron', [<minecraft:iron_block>, <minecraft:iron_shovel>, <minecraft:iron_pickaxe>, <minecraft:iron_axe>, <minecraft:iron_sword>, <minecraft:iron_hoe>, <minecraft:iron_helmet>, <minecraft:iron_chestplate>, <minecraft:iron_leggings>, <minecraft:iron_boots>, <aether_legacy:iron_gloves>, <ThermalFoundation:tool.fishingRodIron>, <ThermalFoundation:tool.sickleIron>, <ThermalFoundation:tool.bowIron>, <Thaumcraft:WandCap>, <ImmersiveEngineering:metal:30>, <ThermalFoundation:material:12>, <ImmersiveEngineering:material:14>, <ImmersiveEngineering:metalDecoration:10>, <minecraft:shears>], [<minecraft:iron_ingot>, <Thaumcraft:ItemNugget>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 2, 3, 2, 0, 1, 4, 0, 1, 2], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 4, 0, 0]);
recycling('gold', [<minecraft:gold_block>, <minecraft:golden_shovel>, <minecraft:golden_pickaxe>, <minecraft:golden_axe>, <minecraft:golden_sword>, <minecraft:golden_hoe>, <minecraft:golden_helmet>, <minecraft:golden_chestplate>, <minecraft:golden_leggings>, <minecraft:golden_boots>, <aether_legacy:golden_gloves>, <ThermalFoundation:tool.fishingRodGold>, <ThermalFoundation:tool.sickleGold>, <ThermalFoundation:tool.bowGold>, <Thaumcraft:WandCap:1>, <ThermalFoundation:tool.shearsGold>, <ThermalFoundation:material:13>], [<minecraft:gold_ingot>, <minecraft:gold_nugget>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 2, 3, 2, 0, 2, 4], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0]);
recycling('copper', [<ThermalFoundation:Storage:0>, <ThermalFoundation:tool.shovelCopper>, <ThermalFoundation:tool.pickaxeCopper>, <ThermalFoundation:tool.axeCopper>, <ThermalFoundation:tool.swordCopper>, <ThermalFoundation:tool.hoeCopper>, <ThermalFoundation:armor.helmetCopper>, <ThermalFoundation:armor.plateCopper>, <ThermalFoundation:armor.legsCopper>, <ThermalFoundation:armor.bootsCopper>, <ThermalFoundation:tool.fishingRodCopper>, <ThermalFoundation:tool.sickleCopper>, <ThermalFoundation:tool.bowCopper>, <Thaumcraft:WandCap:3>, <ThermalFoundation:tool.shearsCopper>, <ThermalFoundation:material:128>, <ImmersiveEngineering:metal:31>], [<ThermalFoundation:material:64>, <ThermalFoundation:material:96>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 3, 2, 0, 2, 4, 1], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0]);
recycling('tin', [<ThermalFoundation:Storage:1>, <ThermalFoundation:tool.shovelTin>, <ThermalFoundation:tool.pickaxeTin>, <ThermalFoundation:tool.axeTin>, <ThermalFoundation:tool.swordTin>, <ThermalFoundation:tool.hoeTin>, <ThermalFoundation:armor.helmetTin>, <ThermalFoundation:armor.plateTin>, <ThermalFoundation:armor.legsTin>, <ThermalFoundation:armor.bootsTin>, <ThermalFoundation:tool.fishingRodTin>, <ThermalFoundation:tool.sickleTin>, <ThermalFoundation:tool.bowTin>, <ThermalFoundation:tool.shearsTin>, <ThermalFoundation:material:129>], [<ThermalFoundation:material:65>, <ThermalFoundation:material:97>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 3, 2, 2, 4], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
recycling('silver', [<ThermalFoundation:Storage:2>, <ThermalFoundation:tool.shovelSilver>, <ThermalFoundation:tool.pickaxeSilver>, <ThermalFoundation:tool.axeSilver>, <ThermalFoundation:tool.swordSilver>, <ThermalFoundation:tool.hoeSilver>, <ThermalFoundation:armor.helmetSilver>, <ThermalFoundation:armor.plateSilver>, <ThermalFoundation:armor.legsSilver>, <ThermalFoundation:armor.bootsSilver>, <ThermalFoundation:tool.fishingRodSilver>, <ThermalFoundation:tool.sickleSilver>, <ThermalFoundation:tool.bowSilver>, <Thaumcraft:WandCap:5>, <ThermalFoundation:tool.shearsSilver>, <ThermalFoundation:material:130>, <ImmersiveEngineering:metal:34>], [<ThermalFoundation:material:66>, <ThermalFoundation:material:98>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 3, 2, 0, 2, 4, 1], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0]);
recycling('lead', [<ThermalFoundation:Storage:3>, <ThermalFoundation:tool.shovelLead>, <ThermalFoundation:tool.pickaxeLead>, <ThermalFoundation:tool.axeLead>, <ThermalFoundation:tool.swordLead>, <ThermalFoundation:tool.hoeLead>, <ThermalFoundation:armor.helmetLead>, <ThermalFoundation:armor.plateLead>, <ThermalFoundation:armor.legsLead>, <ThermalFoundation:armor.bootsLead>, <ThermalFoundation:tool.fishingRodLead>, <ThermalFoundation:tool.sickleLead>, <ThermalFoundation:tool.bowLead>, <ThermalFoundation:tool.shearsLead>, <ThermalFoundation:material:131>, <ImmersiveEngineering:metal:33>], [<ThermalFoundation:material:67>, <ThermalFoundation:material:99>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 3, 2, 2, 4, 1], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
recycling('nickel', [<ThermalFoundation:Storage:4>, <ThermalFoundation:tool.shovelNickel>, <ThermalFoundation:tool.pickaxeNickel>, <ThermalFoundation:tool.axeNickel>, <ThermalFoundation:tool.swordNickel>, <ThermalFoundation:tool.hoeNickel>, <ThermalFoundation:armor.helmetNickel>, <ThermalFoundation:armor.plateNickel>, <ThermalFoundation:armor.legsNickel>, <ThermalFoundation:armor.bootsNickel>, <ThermalFoundation:tool.fishingRodNickel>, <ThermalFoundation:tool.sickleNickel>, <ThermalFoundation:tool.bowNickel>, <ThermalFoundation:tool.shearsNickel>, <ThermalFoundation:material:132>], [<ThermalFoundation:material:68>, <ThermalFoundation:material:100>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 3, 2, 2, 4], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
recycling('electrum', [<ThermalFoundation:Storage:7>, <ThermalFoundation:tool.shovelElectrum>, <ThermalFoundation:tool.pickaxeElectrum>, <ThermalFoundation:tool.axeElectrum>, <ThermalFoundation:tool.swordElectrum>, <ThermalFoundation:tool.hoeElectrum>, <ThermalFoundation:armor.helmetElectrum>, <ThermalFoundation:armor.plateElectrum>, <ThermalFoundation:armor.legsElectrum>, <ThermalFoundation:armor.bootsElectrum>, <ThermalFoundation:tool.fishingRodElectrum>, <ThermalFoundation:tool.sickleElectrum>, <ThermalFoundation:tool.bowElectrum>, <ThermalFoundation:tool.shearsElectrum>, <ThermalFoundation:material:135>, <ImmersiveEngineering:metal:37>], [<ThermalFoundation:material:71>, <ThermalFoundation:material:103>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 3, 2, 2, 4, 1], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
recycling('bronze', [<ThermalFoundation:Storage:9>, <ThermalFoundation:tool.shovelBronze>, <ThermalFoundation:tool.pickaxeBronze>, <ThermalFoundation:tool.axeBronze>, <ThermalFoundation:tool.swordBronze>, <ThermalFoundation:tool.hoeBronze>, <ThermalFoundation:armor.helmetBronze>, <ThermalFoundation:armor.plateBronze>, <ThermalFoundation:armor.legsBronze>, <ThermalFoundation:armor.bootsBronze>, <ThermalFoundation:tool.fishingRodBronze>, <ThermalFoundation:tool.sickleBronze>, <ThermalFoundation:tool.bowBronze>, <ThermalFoundation:tool.shearsBronze>, <ThermalFoundation:material:137>], [<ThermalFoundation:material:73>, <ThermalFoundation:material:105>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 3, 2, 2, 4], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
recycling('invar', [<ThermalFoundation:Storage:8>, <ThermalFoundation:tool.shovelInvar>, <ThermalFoundation:tool.pickaxeInvar>, <ThermalFoundation:tool.axeInvar>, <ThermalFoundation:tool.swordInvar>, <ThermalFoundation:tool.hoeInvar>, <ThermalFoundation:armor.helmetInvar>, <ThermalFoundation:armor.plateInvar>, <ThermalFoundation:armor.legsInvar>, <ThermalFoundation:armor.bootsInvar>, <ThermalFoundation:tool.fishingRodInvar>, <ThermalFoundation:tool.sickleInvar>, <ThermalFoundation:tool.bowInvar>, <ThermalFoundation:tool.shearsInvar>, <ThermalFoundation:material:136>], [<ThermalFoundation:material:72>, <ThermalFoundation:material:104>], [9, 1, 3, 3, 2, 1, 5, 8, 7, 4, 2, 3, 2, 2, 4], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);