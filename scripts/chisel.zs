import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.data.IData;

var none = <etfuturum:barrier>;

function chisel(newGroup as IData, group as IData, hasMainEntry as IData, mainEntry as IItemStack, entriesToAdd as IItemStack[], remove as IData) {
    if(newGroup == true) {
        mods.chisel.Groups.addGroup(group);
    }
    if(hasMainEntry == true) {
        if(remove == true) {
            mods.chisel.Groups.removeVariation(mainEntry);
        }
        mods.chisel.Groups.addVariation(group, mainEntry);
    }

    for i, currentEntry in entriesToAdd {
        recipes.remove(currentEntry);
        if(remove == true) {
            mods.chisel.Groups.removeVariation(currentEntry);
        }
        mods.chisel.Groups.addVariation(group, currentEntry);
    }
}
chisel(true, "cobblestone_fixed", true, <minecraft:cobblestone>, [<chisel:cobblestone:1>, <chisel:cobblestone:2>, <chisel:cobblestone:3>, <chisel:cobblestone:4>, <chisel:cobblestone:5>, <chisel:cobblestone:6>, <chisel:cobblestone:7>, <chisel:cobblestone:8>, <chisel:cobblestone:9>, <chisel:cobblestone:10>, <chisel:cobblestone:11>, <chisel:cobblestone:12>, <chisel:cobblestone:13>, <chisel:cobblestone:14>, <chisel:cobblestone:15>], false);
chisel(true, "deepslate", true, <etfuturum:deepslate>, [<etfuturum:polished_deepslate>, <etfuturum:deepslate_bricks>, <etfuturum:deepslate_bricks:1>, <etfuturum:deepslate_bricks:2>, <etfuturum:deepslate_bricks:3>, <etfuturum:deepslate_bricks:4>], false);
chisel(true, "red_sandstone", true, <etfuturum:red_sandstone>, [<etfuturum:red_sandstone:1>, <etfuturum:red_sandstone:2>, <etfuturum:smooth_red_sandstone>], false);
chisel(true, "quartz_fixed", true, <minecraft:quartz_block>, [<netherlicious:QuartzBricks:1>, <netherlicious:QuartzBricks>, <minecraft:quartz_block:2>, <minecraft:quartz_block:1>, <netherlicious:QuartzPillar>], false);
chisel(true, "void_quartz", true, <netherlicious:QuartzBricks:2>, [<netherlicious:QuartzBricks:5>, <netherlicious:QuartzBricks:4>, <netherlicious:QuartzBricks:3>, <netherlicious:QuartzPillar:1>, <netherlicious:QuartzPillar:2>], false);
chisel(true, "smokey_quartz", true, <ThaumicTinkerer:darkQuartz>, [<ThaumicTinkerer:darkQuartz:1>, <ThaumicTinkerer:darkQuartz:2>], false);

chisel(true, "tuff", true, <etfuturum:tuff>, [<etfuturum:tuff:1>, <etfuturum:tuff:2>, <etfuturum:tuff:3>, <etfuturum:tuff:4>], false);

chisel(false, "copperblock", false, none, [<etfuturum:copper_block:8>, <etfuturum:copper_block:4>, <etfuturum:copper_block:12>, <etfuturum:chiseled_copper>, <etfuturum:chiseled_copper:4>, <etfuturum:copper_grate>, <etfuturum:copper_grate:4>], false);
chisel(true, "copperblock_exposed", true, <etfuturum:copper_block:1>, [<etfuturum:copper_block:9>, <etfuturum:copper_block:5>, <etfuturum:copper_block:13>, <etfuturum:chiseled_copper:1>, <etfuturum:chiseled_copper:5>, <etfuturum:copper_grate:1>, <etfuturum:copper_grate:5>], false);
chisel(true, "copperblock_weathered", true, <etfuturum:copper_block:2>, [<etfuturum:copper_block:10>, <etfuturum:copper_block:6>, <etfuturum:copper_block:14>, <etfuturum:chiseled_copper:2>, <etfuturum:chiseled_copper:6>, <etfuturum:copper_grate:2>, <etfuturum:copper_grate:6>], false);
chisel(true, "copperblock_oxidized", true, <etfuturum:copper_block:3>, [<etfuturum:copper_block:11>, <etfuturum:copper_block:7>, <etfuturum:copper_block:15>, <etfuturum:chiseled_copper:3>, <etfuturum:chiseled_copper:7>, <etfuturum:copper_grate:3>, <etfuturum:copper_grate:7>], false);

chisel(true, "copperdoor", true, <etfuturum:copper_door>, [<etfuturum:waxed_copper_door>], false);
chisel(true, "copperdoor_exposed", true, <etfuturum:exposed_copper_door>, [<etfuturum:waxed_exposed_copper_door>], false);
chisel(true, "copperdoor_weathered", true, <etfuturum:weathered_copper_door>, [<etfuturum:waxed_weathered_copper_door>], false);
chisel(true, "copperdoor_oxidized", true, <etfuturum:oxidized_copper_door>, [<etfuturum:waxed_oxidized_copper_door>], false);

chisel(true, "coppertrapdoor", true, <etfuturum:copper_trapdoor>, [<etfuturum:waxed_copper_trapdoor>], false);
chisel(true, "coppertrapdoor_exposed", true, <etfuturum:exposed_copper_trapdoor>, [<etfuturum:waxed_exposed_copper_trapdoor>], false);
chisel(true, "coppertrapdoor_weathered", true, <etfuturum:weathered_copper_trapdoor>, [<etfuturum:waxed_weathered_copper_trapdoor>], false);
chisel(true, "coppertrapdoor_oxidized", true, <etfuturum:oxidized_copper_trapdoor>, [<etfuturum:waxed_oxidized_copper_trapdoor>], false);

chisel(true, "aether_pillar", true, <aether_legacy:pillar>, [<aether_legacy:pillar_top>], false);
chisel(true, "carved_stone", true, <aether_legacy:carved_stone>, [<aether_legacy:sentry_stone>], false);
chisel(true, "angelic_stone", true, <aether_legacy:angelic_stone>, [<aether_legacy:light_angelic_stone>], false);
chisel(true, "hellfire_stone", true, <aether_legacy:hellfire_stone>, [<aether_legacy:light_hellfire_stone>], false);

chisel(true, "red_nether_bricks", true, <netherlicious:Netherbricks:2>, [<netherlicious:Netherbricks:3>, <netherlicious:Netherbricks:4>, <netherlicious:NewNetherbrick1:5>, <netherlicious:NewNetherbrick1:6>, <netherlicious:NewNetherbrick1:7>, <netherlicious:NewNetherbrick1:8>, <netherlicious:NewNetherbrick1:9>], true);
chisel(true, "warped_nether_bricks", true, <netherlicious:Netherbricks:5>, [<netherlicious:Netherbricks:6>, <netherlicious:Netherbricks:7>, <netherlicious:NewNetherbrick1:10>, <netherlicious:NewNetherbrick1:11>, <netherlicious:NewNetherbrick1:12>, <netherlicious:NewNetherbrick1:13>, <netherlicious:NewNetherbrick1:14>], true);
chisel(true, "foxfire_nether_bricks", true, <netherlicious:Netherbricks:8>, [<netherlicious:Netherbricks:9>, <netherlicious:Netherbricks:10>, <netherlicious:NewNetherbrick2>, <netherlicious:NewNetherbrick2:1>, <netherlicious:NewNetherbrick2:2>, <netherlicious:NewNetherbrick2:3>, <netherlicious:NewNetherbrick2:4>], true);
chisel(true, "black_nether_bricks", true, <netherlicious:NewNetherbrick2:5>, [<netherlicious:NewNetherbrick2:6>, <netherlicious:NewNetherbrick2:7>, <netherlicious:NewNetherbrick2:8>, <netherlicious:NewNetherbrick2:9>, <netherlicious:NewNetherbrick2:10>, <netherlicious:NewNetherbrick2:11>, <netherlicious:NewNetherbrick2:12>], true);
chisel(true, "nether_basalt", true, <netherlicious:Basalt>, [<netherlicious:Basalt:1>, <netherlicious:BasaltBricks>, <netherlicious:BasaltBricks:1>, <netherlicious:BasaltBricks:2>, <netherlicious:BasaltBricks:3>, <netherlicious:BasaltBricks:4>, <netherlicious:BasaltBricks:5>, <netherlicious:BasaltBricks:6>, <netherlicious:BasaltBricks:7>], false);
chisel(true, "nether_blackstone", true, <netherlicious:Blackstone>, [<netherlicious:Blackstone:1>, <netherlicious:Blackstone:2>, <netherlicious:Blackstone:3>, <netherlicious:Blackstone:4>, <netherlicious:Blackstone:6>, <netherlicious:Blackstone:7>, <netherlicious:Blackstone:8>], false);
chisel(true, "soul_sandstone", true, <netherlicious:SoulSandstone>, [<netherlicious:SoulSandstone:1>, <netherlicious:SoulSandstone:2>, <netherlicious:SoulSandstone:3>], false);

chisel(true, "azulejo", true, <Botania:customBrick:4>, [<Botania:customBrick:5>, <Botania:customBrick:6>, <Botania:customBrick:7>, <Botania:customBrick:8>, <Botania:customBrick:9>, <Botania:customBrick:10>, <Botania:customBrick:11>, <Botania:customBrick:12>, <Botania:customBrick:13>, <Botania:customBrick:14>, <Botania:customBrick:15>], false);
chisel(true, "livingrock", true, <Botania:livingrock>, [<Botania:livingrock:1>, <Botania:livingrock:2>, <Botania:livingrock:3>, <Botania:livingrock:4>], false);
chisel(true, "livingwood", true, <Botania:livingwood:1>, [<Botania:livingwood:2>, <Botania:livingwood:3>, <Botania:livingwood:4>], false);
chisel(true, "dreamwood", true, <Botania:dreamwood:1>, [<Botania:dreamwood:2>, <Botania:dreamwood:3>, <Botania:dreamwood:4>], false);
chisel(true, "pavement", true, <Botania:pavement>, [<Botania:pavement:1>, <Botania:pavement:2>, <Botania:pavement:3>, <Botania:pavement:4>, <Botania:pavement:5>], false);

chisel(true, "biome_stone_forest", true, <Botania:biomeStoneA>, [<Botania:biomeStoneB>, <Botania:biomeStoneB:8>], false);
chisel(true, "biome_stone_plains", true, <Botania:biomeStoneA:1>, [<Botania:biomeStoneB:1>, <Botania:biomeStoneB:9>], false);
chisel(true, "biome_stone_mountain", true, <Botania:biomeStoneA:2>, [<Botania:biomeStoneB:2>, <Botania:biomeStoneB:10>], false);
chisel(true, "biome_stone_fungal", true, <Botania:biomeStoneA:3>, [<Botania:biomeStoneB:3>, <Botania:biomeStoneB:11>], false);
chisel(true, "biome_stone_swamp", true, <Botania:biomeStoneA:4>, [<Botania:biomeStoneB:4>, <Botania:biomeStoneB:12>], false);
chisel(true, "biome_stone_desert", true, <Botania:biomeStoneA:5>, [<Botania:biomeStoneB:5>, <Botania:biomeStoneB:13>], false);
chisel(true, "biome_stone_taiga", true, <Botania:biomeStoneA:6>, [<Botania:biomeStoneB:6>, <Botania:biomeStoneB:14>], false);
chisel(true, "biome_stone_mesa", true, <Botania:biomeStoneA:7>, [<Botania:biomeStoneB:7>, <Botania:biomeStoneB:15>], false);

chisel(false, "stonebricksmooth", false, none, [<chisel:stone_snakestone:1>, <chisel:stone_snakestone:13>, <TwilightForest:tile.TFSpiralBricks>], false);

chisel(true, "nagastone", true, <TwilightForest:tile.TFNagastoneBody>, [<TwilightForest:tile.TFNagastoneHead>, <TwilightForest:tile.TFNagastoneEtched>, <TwilightForest:tile.TFNagastoneEtchedMossy>, <TwilightForest:tile.TFNagastoneEtchedWeathered>, <TwilightForest:tile.TFNagastonePillar>, <TwilightForest:tile.TFNagastonePillarMossy>, <TwilightForest:tile.TFNagastonePillarWeathered>], false);
chisel(true, "nagastone_stairs", true, <TwilightForest:tile.TFNagastoneStairsLeft>, [<TwilightForest:tile.TFNagastoneStairsRight>, <TwilightForest:tile.TFNagastoneStairsMossyLeft>, <TwilightForest:tile.TFNagastoneStairsMossyRight>, <TwilightForest:tile.TFNagastoneStairsWeatheredLeft>, <TwilightForest:tile.TFNagastoneStairsWeatheredRight>], false);