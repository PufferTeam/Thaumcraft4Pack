import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.data.IData;

var none = <etfuturum:barrier>;

recipes.removeShaped(<minecraft:stonebrick:3>, [
	[<minecraft:stone_slab:5>],
	[<minecraft:stone_slab:5>]
]);

recipes.remove(<Thaumcraft:blockWoodenDevice:6>);
recipes.remove(<Thaumcraft:blockWoodenDevice:7>);
recipes.remove(<salisarcana:blockCustomPlank>);
recipes.remove(<salisarcana:blockCustomPlank:1>);
recipes.remove(<aether_legacy:skyroot_planks>);

recipes.addShapeless(<Thaumcraft:blockWoodenDevice:6> * 8, [<salisarcana:blockCustomPlank>, <salisarcana:blockCustomPlank>, <salisarcana:blockCustomPlank>, <salisarcana:blockCustomPlank>, <salisarcana:blockCustomPlank>, <salisarcana:blockCustomPlank>, <salisarcana:blockCustomPlank>, <salisarcana:blockCustomPlank>]);
recipes.addShapeless(<Thaumcraft:blockWoodenDevice:7> * 8, [<salisarcana:blockCustomPlank:1>, <salisarcana:blockCustomPlank:1>, <salisarcana:blockCustomPlank:1>, <salisarcana:blockCustomPlank:1>, <salisarcana:blockCustomPlank:1>, <salisarcana:blockCustomPlank:1>, <salisarcana:blockCustomPlank:1>, <salisarcana:blockCustomPlank:1>]);

function cut(mod as IData, name as IData, blocks as IItemStack[], type as IData, logs as IItemStack[], logsOreDict as IOreDictEntry, specialRemove as IData) {
	if(specialRemove == 1 || specialRemove == 5) {
		recipes.removeShaped(blocks[0], [
			[blocks[1]],
			[blocks[1]]
		]);
	}

	if(type == 1) {
		for i, currentWood in logs {
			recipes.removeShapeless(blocks[0] * 4, [currentWood]);
			recipes.removeShaped(blocks[0] * 4, [[currentWood]]);
 			logsOreDict.add(currentWood);
		}
		recipes.addShapeless(blocks[0] * 4, [logsOreDict]);

		if(specialRemove != 5) {
			<ore:plankWood>.add(blocks[0]);
			<ore:slabWood>.add(blocks[1]);
			<ore:stairWood>.add(blocks[2]);
		}

	}

	if(type != 4 && type != 5) {
		recipes.addShaped(blocks[0], [
			[blocks[1]],
			[blocks[1]]
		]);

		recipes.remove(blocks[1]);
		recipes.addShaped(blocks[1] * 6, [
			[blocks[0], blocks[0], blocks[0]]
		]);
	}

	if(type != 2) {
		if(type != 4 && type != 5) {
			recipes.addShaped(blocks[0] * 3, [
				[blocks[2], blocks[2]],
				[blocks[2], blocks[2]]
			]);
		} else if (type == 4) {
			recipes.addShaped(blocks[0] * 3, [
				[logsOreDict, logsOreDict],
				[logsOreDict, logsOreDict]
			]);
		} else if (type == 5) {
			recipes.addShaped(blocks[0] * 3, [
				[blocks[1], blocks[1]],
				[blocks[1], blocks[1]]
			]);
		}

		if(type != 5) {
			recipes.remove(blocks[2]);
			recipes.addShapedMirrored(blocks[2] * 8, [
				[blocks[0], null, null],
				[blocks[0], blocks[0], null],
				[blocks[0], blocks[0], blocks[0]]
			]);
		} else if(type == 5) {
			recipes.remove(blocks[1]);
			recipes.addShapedMirrored(blocks[1] * 8, [
				[blocks[0], null, null],
				[blocks[0], blocks[0], null],
				[blocks[0], blocks[0], blocks[0]]
			]);		
		}

	}

	if(type == 3) {
		recipes.remove(blocks[3]);
		recipes.addShaped(blocks[3] * 6, [
			[blocks[0], blocks[0], blocks[0]],
			[blocks[0], blocks[0], blocks[0]]
		]);
	}

	if(type == 4) {
		recipes.remove(blocks[1]);
		recipes.addShapedMirrored(blocks[1] * 8, [
			[blocks[0], blocks[0], blocks[0]],
			[null, blocks[0], blocks[0]],
			[null, null, blocks[0]]
		]);
	}
}

cut('minecraft', 'oak', [<minecraft:planks>, <minecraft:wooden_slab>, <minecraft:oak_stairs>], 1, [<minecraft:log>, <etfuturum:bark>, <etfuturum:log_stripped>, <etfuturum:wood_stripped>], <ore:logWoodOak>, 0);
cut('minecraft', 'spruce', [<minecraft:planks:1>, <minecraft:wooden_slab:1>, <minecraft:spruce_stairs>], 1, [<minecraft:log:1>, <etfuturum:bark:1>, <etfuturum:log_stripped:1>, <etfuturum:wood_stripped:1>], <ore:logWoodSpruce>, 0);
cut('minecraft', 'birch', [<minecraft:planks:2>, <minecraft:wooden_slab:2>, <minecraft:birch_stairs>], 1, [<minecraft:log:2>, <etfuturum:bark:2>, <etfuturum:log_stripped:2>, <etfuturum:wood_stripped:2>], <ore:logWoodBirch>, 0);
cut('minecraft', 'jungle', [<minecraft:planks:3>, <minecraft:wooden_slab:3>, <minecraft:jungle_stairs>], 1, [<minecraft:log:3>, <etfuturum:bark:3>, <etfuturum:log_stripped:3>, <etfuturum:wood_stripped:3>], <ore:logWoodJungle>, 0);
cut('minecraft', 'acacia', [<minecraft:planks:4>, <minecraft:wooden_slab:4>, <minecraft:acacia_stairs>], 1, [<minecraft:log2>, <etfuturum:bark2>, <etfuturum:log2_stripped>, <etfuturum:wood2_stripped>], <ore:logWoodAcacia>, 0);
cut('minecraft', 'dark_oak', [<minecraft:planks:5>, <minecraft:wooden_slab:5>, <minecraft:dark_oak_stairs>], 1, [<minecraft:log2:1>, <etfuturum:bark2:1>, <etfuturum:log2_stripped:1>, <etfuturum:wood2_stripped:1>], <ore:logWoodDarkOak>, 0);
cut('BiomesOPlenty', 'sacredoak', [<BiomesOPlenty:planks>, <BiomesOPlenty:woodenSingleSlab1>, <BiomesOPlenty:sacredoakStairs>], 1, [<BiomesOPlenty:logs1>], <ore:logWoodSacredOak>, 0);
cut('BiomesOPlenty', 'cherry', [<BiomesOPlenty:planks:1>, <BiomesOPlenty:woodenSingleSlab1:1>, <BiomesOPlenty:cherryStairs>], 1, [<BiomesOPlenty:logs1:1>], <ore:logWoodCherry>, 0);
cut('BiomesOPlenty', 'dark', [<BiomesOPlenty:planks:2>, <BiomesOPlenty:woodenSingleSlab1:2>, <BiomesOPlenty:darkStairs>], 1, [<BiomesOPlenty:logs1:2>], <ore:logWoodDark>, 0);
cut('BiomesOPlenty', 'fir', [<BiomesOPlenty:planks:3>, <BiomesOPlenty:woodenSingleSlab1:3>, <BiomesOPlenty:firStairs>], 1, [<BiomesOPlenty:logs1:3>], <ore:logWoodFir>, 0);
cut('BiomesOPlenty', 'ethereal', [<BiomesOPlenty:planks:4>, <BiomesOPlenty:woodenSingleSlab1:4>, <BiomesOPlenty:etherealStairs>], 1, [<BiomesOPlenty:logs2>], <ore:logWoodEthereal>, 0);
cut('BiomesOPlenty', 'magic', [<BiomesOPlenty:planks:5>, <BiomesOPlenty:woodenSingleSlab1:5>, <BiomesOPlenty:magicStairs>], 1, [<BiomesOPlenty:logs2:1>], <ore:logWoodMagic>, 0);
cut('BiomesOPlenty', 'mangrove', [<BiomesOPlenty:planks:6>, <BiomesOPlenty:woodenSingleSlab1:6>, <BiomesOPlenty:mangroveStairs>], 1, [<BiomesOPlenty:logs2:2>], <ore:logWoodMangrove>, 0);
cut('BiomesOPlenty', 'palm', [<BiomesOPlenty:planks:7>, <BiomesOPlenty:woodenSingleSlab1:7>, <BiomesOPlenty:palmStairs>], 1, [<BiomesOPlenty:logs2:3>], <ore:logWoodPalm>, 0);
cut('BiomesOPlenty', 'redwood', [<BiomesOPlenty:planks:8>, <BiomesOPlenty:woodenSingleSlab2>, <BiomesOPlenty:redwoodStairs>], 1, [<BiomesOPlenty:logs3>], <ore:logWoodRedwood>, 0);
cut('BiomesOPlenty', 'willow', [<BiomesOPlenty:planks:9>, <BiomesOPlenty:woodenSingleSlab2:1>, <BiomesOPlenty:willowStairs>], 1, [<BiomesOPlenty:logs3:1>], <ore:logWoodWillow>, 0);
cut('BiomesOPlenty', 'pine', [<BiomesOPlenty:planks:11>, <BiomesOPlenty:woodenSingleSlab2:2>, <BiomesOPlenty:pineStairs>], 1, [<BiomesOPlenty:logs4>], <ore:logWoodPine>, 0);
cut('BiomesOPlenty', 'hellBark', [<BiomesOPlenty:planks:12>, <BiomesOPlenty:woodenSingleSlab2:3>, <BiomesOPlenty:hellBarkStairs>], 1, [<BiomesOPlenty:logs4:1>], <ore:logWoodHellBark>, 0);
cut('BiomesOPlenty', 'jacaranda', [<BiomesOPlenty:planks:13>, <BiomesOPlenty:woodenSingleSlab2:4>, <BiomesOPlenty:jacarandaStairs>], 1, [<BiomesOPlenty:logs4:2>], <ore:logWoodJacaranda>, 0);
cut('BiomesOPlenty', 'mahogany', [<BiomesOPlenty:planks:14>, <BiomesOPlenty:woodenSingleSlab2:5>, <BiomesOPlenty:mahoganyStairs>], 1, [<BiomesOPlenty:logs4:3>], <ore:logWoodMahogany>, 0);

cut('netherlicious', 'crimson', [<netherlicious:Planks>, <netherlicious:PlankSingleSlab>, <netherlicious:CrimsonStairs>], 1, [<netherlicious:Stem>, <netherlicious:FullWood>, <netherlicious:Stem:1>, <netherlicious:FullWood:1>], <ore:logWoodCrimson>, 0);
cut('netherlicious', 'warped', [<netherlicious:Planks:1>, <netherlicious:PlankSingleSlab:1>, <netherlicious:WarpedStairs>], 1, [<netherlicious:Stem:2>, <netherlicious:FullWood:2>, <netherlicious:Stem:3>, <netherlicious:FullWood:3>], <ore:logWoodWarped>, 0);
cut('netherlicious', 'foxfire', [<netherlicious:Planks:2>, <netherlicious:PlankSingleSlab:2>, <netherlicious:FoxfireStairs>], 1, [<netherlicious:Stem2>, <netherlicious:FullWood:4>, <netherlicious:Stem2:1>, <netherlicious:FullWood:5>], <ore:logWoodFoxfire>, 0);

cut('TwilightForest', 'twilight_oak', [<TwilightForest:tile.TFPlank>, <TwilightForest:tile.TFWoodSlab>, <TwilightForest:tile.TFWoodStairsTwilight>], 1, [<TwilightForest:tile.TFLog>], <ore:logWoodTwilightOak>, 0);
cut('TwilightForest', 'canopy', [<TwilightForest:tile.TFPlank:1>, <TwilightForest:tile.TFWoodSlab:1>, <TwilightForest:tile.TFWoodStairsCanopy>], 1, [<TwilightForest:tile.TFLog:1>], <ore:logWoodCanopyTree>, 0);
cut('TwilightForest', 'mangrove', [<TwilightForest:tile.TFPlank:2>, <TwilightForest:tile.TFWoodSlab:2>, <TwilightForest:tile.TFWoodStairsMangrove>], 1, [<TwilightForest:tile.TFLog:2>], <ore:logWoodTwilightMangrove>, 0);
cut('TwilightForest', 'darkwood', [<TwilightForest:tile.TFPlank:3>, <TwilightForest:tile.TFWoodSlab:3>, <TwilightForest:tile.TFWoodStairsDarkwood>], 1, [<TwilightForest:tile.TFLog:3>], <ore:logWoodDarkwood>, 0);
cut('TwilightForest', 'timewood', [<TwilightForest:tile.TFPlank:4>, <TwilightForest:tile.TFWoodSlab:4>, <TwilightForest:tile.TFWoodStairsTime>], 1, [<TwilightForest:tile.TFMagicLog>], <ore:logWoodTimewood>, 0);
cut('TwilightForest', 'transwood', [<TwilightForest:tile.TFPlank:5>, <TwilightForest:tile.TFWoodSlab:5>, <TwilightForest:tile.TFWoodStairsTrans>], 1, [<TwilightForest:tile.TFMagicLog:1>], <ore:logWoodTranswood>, 0);
cut('TwilightForest', 'minewood', [<TwilightForest:tile.TFPlank:6>, <TwilightForest:tile.TFWoodSlab:6>, <TwilightForest:tile.TFWoodStairsMine>], 1, [<TwilightForest:tile.TFMagicLog:2>], <ore:logWoodMinewood>, 0);
cut('TwilightForest', 'sortingwood', [<TwilightForest:tile.TFPlank:7>, <TwilightForest:tile.TFWoodSlab:7>, <TwilightForest:tile.TFWoodStairsSort>], 1, [<TwilightForest:tile.TFMagicLog:3>], <ore:logWoodSortingwood>, 0);

cut('aether_legacy', 'skyroot', [<aether_legacy:skyroot_planks>, <aether_legacy:skyroot_slab>, <aether_legacy:skyroot_stairs>], 1, [<aether_legacy:skyroot_log>, <aether_legacy:golden_oak_log>], <ore:logWoodSkyroot>, 0);

cut('witchery', 'rowan', [<witchery:witchwood>, <witchery:witchwoodslab>, <witchery:stairswoodrowan>], 1, [<witchery:witchlog>], <ore:logWoodRowan>, 0);
cut('witchery', 'alder', [<witchery:witchwood:1>, <witchery:witchwoodslab:1>, <witchery:stairswoodalder>], 1, [<witchery:witchlog:1>], <ore:logWoodAlder>, 0);
cut('witchery', 'hawthorn', [<witchery:witchwood:2>, <witchery:witchwoodslab:2>, <witchery:stairswoodhawthorn>], 1, [<witchery:witchlog:2>], <ore:logWoodHawthorn>, 0);

cut('thaumcraft', 'greatwood', [<salisarcana:blockCustomPlank>, <Thaumcraft:blockCosmeticSlabWood>, <Thaumcraft:blockStairsGreatwood>], 1, [<Thaumcraft:blockMagicalLog>], <ore:logWoodGreatwood>, 0);
cut('thaumcraft', 'silverwood', [<salisarcana:blockCustomPlank:1>, <Thaumcraft:blockCosmeticSlabWood:1>, <Thaumcraft:blockStairsSilverwood>], 1, [<Thaumcraft:blockMagicalLog:1>], <ore:logWoodSilverwood>, 0);

cut('botania', 'livingwood', [<Botania:livingwood>, <Botania:livingwood0Slab>, <Botania:livingwood0Stairs>, <Botania:livingwood0Wall>], 3, [], <ore:none>, 5);
cut('botania', 'livingwood_planks', [<Botania:livingwood:1>, <Botania:livingwood1Slab>, <Botania:livingwood1Stairs>], 1, [<Botania:livingwood>], <ore:logWoodLivingwood>, 5);

cut('etfuturum', 'stone', [<minecraft:stone>, <etfuturum:stone_slab>, <etfuturum:stone_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'smooth_stone', [<etfuturum:smooth_stone>, <minecraft:stone_slab>], 2, [], <ore:none>, 0);
cut('etfuturum', 'stone_bricks', [<minecraft:stonebrick>, <minecraft:stone_slab:5>, <minecraft:stone_brick_stairs>, <etfuturum:stone_wall>], 3, [], <ore:none>, 0);
cut('etfuturum', 'mossy_stone_bricks', [<minecraft:stonebrick:1>, <etfuturum:stone_slab:2>, <etfuturum:mossy_stone_brick_stairs>, <etfuturum:stone_wall:1>], 3, [], <ore:none>, 0);
cut('etfuturum', 'cobblestone', [<minecraft:cobblestone>, <minecraft:stone_slab:3>, <minecraft:stone_stairs>, <minecraft:cobblestone_wall>], 3, [], <ore:none>, 0);
cut('etfuturum', 'mossy_cobblestone', [<minecraft:mossy_cobblestone>, <etfuturum:stone_slab:1>, <etfuturum:mossy_cobblestone_stairs>, <minecraft:cobblestone_wall:1>], 3, [], <ore:none>, 0);
cut('etfuturum', 'bricks', [<minecraft:brick_block>, <minecraft:stone_slab:4>, <minecraft:brick_stairs>, <etfuturum:stone_wall:3>], 3, [], <ore:none>, 0);
cut('etfuturum', 'cobbled_deepslate', [<etfuturum:cobbled_deepslate>, <etfuturum:deepslate_slab>, <etfuturum:cobbled_deepslate_stairs>, <etfuturum:deepslate_wall>], 3, [], <ore:none>, 0);
cut('etfuturum', 'polished_deepslate', [<etfuturum:polished_deepslate>, <etfuturum:deepslate_slab:1>, <etfuturum:polished_deepslate_stairs>, <etfuturum:deepslate_wall:1>], 3, [], <ore:none>, 0);
cut('etfuturum', 'deepslate_bricks', [<etfuturum:deepslate_bricks>, <etfuturum:deepslate_brick_slab>, <etfuturum:deepslate_brick_stairs>, <etfuturum:deepslate_brick_wall>], 3, [], <ore:none>, 0);
cut('etfuturum', 'deepslate_tiles', [<etfuturum:deepslate_bricks:2>, <etfuturum:deepslate_brick_slab:1>, <etfuturum:deepslate_tile_stairs>, <etfuturum:deepslate_brick_wall:1>], 3, [], <ore:none>, 0);
cut('etfuturum', 'sandstone', [<minecraft:sandstone>, <minecraft:stone_slab:1>, <minecraft:sandstone_stairs>, <etfuturum:stone_wall:2>], 3, [], <ore:none>, 0);
cut('etfuturum', 'cut_sandstone', [<minecraft:sandstone:2>, <etfuturum:stone_slab:3>], 2, [], <ore:none>, 0);
cut('etfuturum', 'red_sandstone', [<etfuturum:red_sandstone>, <etfuturum:red_sandstone_slab>, <etfuturum:red_sandstone_stairs>, <etfuturum:red_sandstone_wall>], 3, [], <ore:none>, 0);
cut('etfuturum', 'smooth_red_sandstone', [<etfuturum:smooth_red_sandstone>, <etfuturum:smooth_red_sandstone_slab>, <etfuturum:smooth_red_sandstone_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'cut_red_sandstone', [<etfuturum:red_sandstone:2>, <etfuturum:red_sandstone_slab:1>], 2, [], <ore:none>, 0);
cut('etfuturum', 'cut_copper', [<etfuturum:copper_block:4>, <etfuturum:cut_copper_slab>, <etfuturum:cut_copper_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'cut_copper_exposed', [<etfuturum:copper_block:5>, <etfuturum:cut_copper_slab:1>, <etfuturum:exposed_cut_copper_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'cut_copper_weathered', [<etfuturum:copper_block:6>, <etfuturum:cut_copper_slab:2>, <etfuturum:weathered_cut_copper_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'cut_copper_oxidized', [<etfuturum:copper_block:7>, <etfuturum:cut_copper_slab:3>, <etfuturum:oxidized_cut_copper_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'waxed_cut_copper', [<etfuturum:copper_block:12>, <etfuturum:cut_copper_slab:4>, <etfuturum:waxed_cut_copper_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'waxed_cut_copper_exposed', [<etfuturum:copper_block:13>, <etfuturum:cut_copper_slab:5>, <etfuturum:waxed_exposed_cut_copper_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'waxed_cut_copper_weathered', [<etfuturum:copper_block:14>, <etfuturum:cut_copper_slab:6>, <etfuturum:waxed_weathered_cut_copper_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'waxed_cut_copper_oxidized', [<etfuturum:copper_block:15>, <etfuturum:cut_copper_slab:7>, <etfuturum:waxed_oxidized_cut_copper_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'tuff', [<etfuturum:tuff>, <etfuturum:tuff_slab>, <etfuturum:tuff_stairs>, <etfuturum:tuff_wall>], 3, [], <ore:none>, 0);
cut('etfuturum', 'polished_tuff', [<etfuturum:tuff:1>, <etfuturum:tuff_slab:1>, <etfuturum:polished_tuff_stairs>, <etfuturum:tuff_wall:1>], 3, [], <ore:none>, 0);
cut('etfuturum', 'tuff_brick', [<etfuturum:tuff:2>, <etfuturum:tuff_slab:2>, <etfuturum:tuff_brick_stairs>, <etfuturum:tuff_wall:2>], 3, [], <ore:none>, 0);
cut('etfuturum', 'mud_bricks', [<etfuturum:packed_mud:1>, <etfuturum:mud_brick_slab>, <etfuturum:mud_brick_stairs>, <etfuturum:mud_brick_wall>], 3, [], <ore:none>, 0);
cut('etfuturum', 'purpur_block', [<chisel:purpur>, <etfuturum:purpur_slab>, <etfuturum:purpur_stairs>], 0, [], <ore:none>, 0);
cut('etfuturum', 'endstone_bricks', [<chisel:end_Stone>, <etfuturum:end_brick_slab>, <etfuturum:end_brick_stairs>, <etfuturum:end_brick_wall>], 3, [], <ore:none>, 0);

cut('aether_legacy', 'holystone', [<aether_legacy:holystone>, <aether_legacy:holystone_slab>, <aether_legacy:holystone_stairs>, <aether_legacy:holystone_wall>], 3, [], <ore:none>, 0);
cut('aether_legacy', 'holystone_brick', [<aether_legacy:holystone_brick>, <aether_legacy:holystone_brick_slab>, <aether_legacy:holystone_brick_stairs>, <aether_legacy:holystone_brick_wall>], 3, [], <ore:none>, 0);
cut('aether_legacy', 'mossy_holystone', [<aether_legacy:mossy_holystone>, <aether_legacy:mossy_holystone_slab>, <aether_legacy:mossy_holystone_stairs>, <aether_legacy:mossy_holystone_wall>], 3, [], <ore:none>, 0);
cut('aether_legacy', 'carved_stone', [<aether_legacy:carved_stone>, <aether_legacy:carved_slab>, <aether_legacy:carved_stairs>, <aether_legacy:carved_wall>], 3, [], <ore:none>, 0);
cut('aether_legacy', 'angelic_stone', [<aether_legacy:angelic_stone>, <aether_legacy:angelic_slab>, <aether_legacy:angelic_stairs>, <aether_legacy:angelic_wall>], 3, [], <ore:none>, 0);
cut('aether_legacy', 'hellfire_stone', [<aether_legacy:hellfire_stone>, <aether_legacy:hellfire_slab>, <aether_legacy:hellfire_stairs>, <aether_legacy:hellfire_wall>], 3, [], <ore:none>, 0);

cut('netherlicious', 'basalt', [<netherlicious:Basalt>, <netherlicious:BasaltSingleSlab>, <netherlicious:BasaltStairs>, <netherlicious:BasaltWall>], 3, [], <ore:none>, 0);
cut('netherlicious', 'polished_basalt', [<netherlicious:BasaltBricks:2>, <netherlicious:BasaltSingleSlab:1>, <netherlicious:PolishedBasaltStairs>, <netherlicious:BasaltWall:1>], 3, [], <ore:none>, 0);
cut('netherlicious', 'basalt_bricks', [<netherlicious:BasaltBricks>, <netherlicious:BasaltSingleSlab:2>, <netherlicious:BasaltBrickStairs>, <netherlicious:BasaltWall:2>], 3, [], <ore:none>, 0);
cut('netherlicious', 'polished_basalt_bricks', [<netherlicious:BasaltBricks:3>, <netherlicious:BasaltSingleSlab:3>, <netherlicious:PolishedBasaltBrickStairs>, <netherlicious:BasaltWall:3>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_basalt', [<netherlicious:BasaltBricks:6>, <netherlicious:BasaltSingleSlab:4>, <netherlicious:SmoothBasaltStairs>, <netherlicious:BasaltWall:4>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_polished_basalt', [<netherlicious:BasaltBricks:7>, <netherlicious:BasaltSingleSlab:5>, <netherlicious:PolishedSmoothBasaltStairs>, <netherlicious:BasaltWall:5>], 3, [], <ore:none>, 0);
cut('netherlicious', 'blackstone', [<netherlicious:Blackstone>, <netherlicious:BlackstoneSingleSlab>, <netherlicious:BlackstoneStairs>, <netherlicious:Wall>], 3, [], <ore:none>, 0);
cut('netherlicious', 'polished_blackstone', [<netherlicious:Blackstone:1>, <netherlicious:BlackstoneSingleSlab:1>, <netherlicious:PolishedBlackstoneStairs>, <netherlicious:Wall:1>], 3, [], <ore:none>, 0);
cut('netherlicious', 'polished_blackstone_bricks', [<netherlicious:Blackstone:3>, <netherlicious:BlackstoneSingleSlab:2>, <netherlicious:BlackstoneBrickStairs>, <netherlicious:Wall:2>], 3, [], <ore:none>, 0);
cut('netherlicious', 'quartz', [<minecraft:quartz_block>, <minecraft:stone_slab:7>, <minecraft:quartz_stairs>], 0, [], <ore:none>, 0);
cut('netherlicious', 'quartz_bricks', [<netherlicious:QuartzBricks>, <netherlicious:QuartzSingleSlab>, <netherlicious:QuartzBrickStairs>, <netherlicious:QuartzWall:1>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_quartz', [<netherlicious:QuartzBricks:1>, <netherlicious:QuartzSingleSlab:1>, <netherlicious:QuartzSmoothStairs>, <netherlicious:QuartzWall:2>], 3, [], <ore:none>, 0);
cut('netherlicious', 'void_quartz', [<netherlicious:QuartzBricks:2>, <netherlicious:QuartzSingleSlab:2>, <netherlicious:QuartzVoidStairs>], 0, [], <ore:none>, 0);
cut('netherlicious', 'void_quartz_bricks', [<netherlicious:QuartzBricks:4>, <netherlicious:QuartzSingleSlab:3>, <netherlicious:QuartzVoidBrickStairs>, <netherlicious:QuartzWall:4>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_void_quartz', [<netherlicious:QuartzBricks:5>, <netherlicious:QuartzSingleSlab:4>, <netherlicious:QuartzVoidSmoothStairs>, <netherlicious:QuartzWall:5>], 3, [], <ore:none>, 0);
cut('netherlicious', 'nether_bricks', [<minecraft:nether_brick>, <minecraft:stone_slab:6>, <minecraft:nether_brick_stairs>, <netherlicious:NetherbrickWall>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_nether_bricks', [<netherlicious:NewNetherbrick1:3>, <netherlicious:BrickSingleSlab2>, <netherlicious:SmoothNetherbrickStairs>, <netherlicious:NetherbrickWall:5>], 3, [], <ore:none>, 0);
cut('netherlicious', 'red_nether_bricks', [<netherlicious:Netherbricks:2>, <netherlicious:BrickSingleSlab>, <netherlicious:RedWartbrickStairs>, <netherlicious:NetherbrickWall:1>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_red_nether_bricks', [<netherlicious:NewNetherbrick1:8>, <netherlicious:BrickSingleSlab2:1>, <netherlicious:SmoothRedNetherbrickStairs>, <netherlicious:NetherbrickWall:7>], 3, [], <ore:none>, 0);
cut('netherlicious', 'warped_nether_bricks', [<netherlicious:Netherbricks:5>, <netherlicious:BrickSingleSlab:1>, <netherlicious:WarpedWartbrickStairs>, <netherlicious:NetherbrickWall:2>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_warped_nether_bricks', [<netherlicious:NewNetherbrick1:13>, <netherlicious:BrickSingleSlab2:2>, <netherlicious:SmoothWarpedNetherbrickStairs>, <netherlicious:NetherbrickWall:9>], 3, [], <ore:none>, 0);
cut('netherlicious', 'foxfire_nether_bricks', [<netherlicious:Netherbricks:8>, <netherlicious:BrickSingleSlab:2>, <netherlicious:FoxfireWartbrickStairs>, <netherlicious:NetherbrickWall:3>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_foxfire_nether_bricks', [<netherlicious:NewNetherbrick2:3>, <netherlicious:BrickSingleSlab2:3>, <netherlicious:SmoothFoxfireNetherbrickStairs>, <netherlicious:NetherbrickWall:11>], 3, [], <ore:none>, 0);
cut('netherlicious', 'black_nether_bricks', [<netherlicious:NewNetherbrick2:5>, <netherlicious:BrickSingleSlab:3>, <netherlicious:BlackNetherbrickStairs>, <netherlicious:NetherbrickWall:12>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_black_nether_bricks', [<netherlicious:NewNetherbrick2:11>, <netherlicious:BrickSingleSlab2:4>, <netherlicious:SmoothBlackNetherbrickStairs>, <netherlicious:NetherbrickWall:14>], 3, [], <ore:none>, 0);
cut('netherlicious', 'soul_sandstone', [<netherlicious:SoulSandstone>, <netherlicious:SoulSandstoneSingleSlab>, <netherlicious:SoulSandstoneStairs>, <netherlicious:SoulSandstoneWall>], 3, [], <ore:none>, 0);
cut('netherlicious', 'smooth_soul_sandstone', [<netherlicious:SoulSandstone:1>, <netherlicious:SoulSandstoneSingleSlab:1>, <netherlicious:SmoothSoulSandstoneStairs>, <netherlicious:SoulSandstoneWall:1>], 3, [], <ore:none>, 0);

cut('botania', 'reed_block', [<Botania:reedBlock>, <Botania:reedBlock0Slab>, <Botania:reedBlock0Stairs>, <Botania:reedBlock0Wall>], 3, [], <ore:none>, 1);
cut('botania', 'thatch_block', [<Botania:thatch>, <Botania:thatch0Slab>, <Botania:thatch0Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'hellish_bricks', [<Botania:customBrick>, <Botania:customBrick0Slab>, <Botania:customBrick0Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'soul_bricks', [<Botania:customBrick:1>, <Botania:customBrick1Slab>, <Botania:customBrick1Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'frosty_bricks', [<Botania:customBrick:2>, <Botania:customBrick2Slab>, <Botania:customBrick2Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'roof_tile', [<Botania:customBrick:3>, <Botania:customBrick3Slab>, <Botania:customBrick3Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'pavement_white', [<Botania:pavement>, <Botania:pavement0Slab>, <Botania:pavement0Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'pavement_black', [<Botania:pavement:1>, <Botania:pavement1Slab>, <Botania:pavement1Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'pavement_blue', [<Botania:pavement:2>, <Botania:pavement2Slab>, <Botania:pavement2Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'pavement_red', [<Botania:pavement:3>, <Botania:pavement3Slab>, <Botania:pavement3Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'pavement_yellow', [<Botania:pavement:4>, <Botania:pavement4Slab>, <Botania:pavement4Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'pavement_green', [<Botania:pavement:5>, <Botania:pavement5Slab>, <Botania:pavement5Stairs>], 0, [], <ore:none>, 1);

cut('botania', 'prismarine', [<Botania:prismarine>, <Botania:prismarine0Slab>, <Botania:prismarine0Stairs>, <Botania:prismarine0Wall>], 3, [], <ore:none>, 1);
cut('botania', 'prismarine_bricks', [<Botania:prismarine:1>, <Botania:prismarine1Slab>, <Botania:prismarine1Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'prismarine_dark', [<Botania:prismarine:2>, <Botania:prismarine2Slab>, <Botania:prismarine2Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'dreamwood', [<Botania:dreamwood>, <Botania:dreamwood0Slab>, <Botania:dreamwood0Stairs>, <Botania:dreamwood0Wall>], 3, [], <ore:none>, 1);
cut('botania', 'dreamwood_planks', [<Botania:dreamwood:1>, <Botania:dreamwood1Slab>, <Botania:dreamwood1Stairs>], 0, [], <ore:none>, 1);

cut('botania', 'livingrock', [<Botania:livingrock>, <Botania:livingrock0Slab>, <Botania:livingrock0Stairs>, <Botania:livingrock0Wall>], 3, [], <ore:none>, 1);
cut('botania', 'livingrock_bricks', [<Botania:livingrock:1>, <Botania:livingrock1Slab>, <Botania:livingrock1Stairs>], 0, [], <ore:none>, 1);

cut('botania', 'shimmerrock', [<Botania:shimmerrock>, <Botania:shimmerrock0Slab>, <Botania:shimmerrock0Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'shimmerwood', [<Botania:shimmerwoodPlanks>, <Botania:shimmerwoodPlanks0Slab>, <Botania:shimmerwoodPlanks0Stairs>], 0, [], <ore:none>, 1);

cut('botania', 'forest_stone', [<Botania:biomeStoneA>, <Botania:biomeStoneA0Slab>, <Botania:biomeStoneA0Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'plains_stone', [<Botania:biomeStoneA:1>, <Botania:biomeStoneA1Slab>, <Botania:biomeStoneA1Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'mountain_stone', [<Botania:biomeStoneA:2>, <Botania:biomeStoneA2Slab>, <Botania:biomeStoneA2Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'fungal_stone', [<Botania:biomeStoneA:3>, <Botania:biomeStoneA3Slab>, <Botania:biomeStoneA3Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'swamp_stone', [<Botania:biomeStoneA:4>, <Botania:biomeStoneA4Slab>, <Botania:biomeStoneA4Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'desert_stone', [<Botania:biomeStoneA:5>, <Botania:biomeStoneA5Slab>, <Botania:biomeStoneA5Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'taiga_stone', [<Botania:biomeStoneA:6>, <Botania:biomeStoneA6Slab>, <Botania:biomeStoneA6Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'mesa_stone', [<Botania:biomeStoneA:7>, <Botania:biomeStoneA7Slab>, <Botania:biomeStoneA7Stairs>], 0, [], <ore:none>, 1);

cut('botania', 'forest_cobblestone', [<Botania:biomeStoneA:8>, <Botania:biomeStoneA8Slab>, <Botania:biomeStoneA8Stairs>, <Botania:biomeStoneA0Wall>], 3, [], <ore:none>, 1);
cut('botania', 'plains_cobblestone', [<Botania:biomeStoneA:9>, <Botania:biomeStoneA9Slab>, <Botania:biomeStoneA9Stairs>, <Botania:biomeStoneA0Wall:1>], 3, [], <ore:none>, 1);
cut('botania', 'mountain_cobblestone', [<Botania:biomeStoneA:10>, <Botania:biomeStoneA10Slab>, <Botania:biomeStoneA10Stairs>, <Botania:biomeStoneA0Wall:2>], 3, [], <ore:none>, 1);
cut('botania', 'fungal_cobblestone', [<Botania:biomeStoneA:11>, <Botania:biomeStoneA11Slab>, <Botania:biomeStoneA11Stairs>, <Botania:biomeStoneA0Wall:3>], 3, [], <ore:none>, 1);
cut('botania', 'swamp_cobblestone', [<Botania:biomeStoneA:12>, <Botania:biomeStoneA12Slab>, <Botania:biomeStoneA12Stairs>, <Botania:biomeStoneA0Wall:4>], 3, [], <ore:none>, 1);
cut('botania', 'desert_cobblestone', [<Botania:biomeStoneA:13>, <Botania:biomeStoneA13Slab>, <Botania:biomeStoneA13Stairs>, <Botania:biomeStoneA0Wall:5>], 3, [], <ore:none>, 1);
cut('botania', 'taiga_cobblestone', [<Botania:biomeStoneA:14>, <Botania:biomeStoneA14Slab>, <Botania:biomeStoneA14Stairs>, <Botania:biomeStoneA0Wall:6>], 3, [], <ore:none>, 1);
cut('botania', 'mesa_cobblestone', [<Botania:biomeStoneA:15>, <Botania:biomeStoneA15Slab>, <Botania:biomeStoneA15Stairs>, <Botania:biomeStoneA0Wall:7>], 3, [], <ore:none>, 1);

cut('botania', 'forest_stone_bricks', [<Botania:biomeStoneB>, <Botania:biomeStoneB0Slab>, <Botania:biomeStoneB0Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'plains_stone_bricks', [<Botania:biomeStoneB:1>, <Botania:biomeStoneB1Slab>, <Botania:biomeStoneB1Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'mountain_stone_bricks', [<Botania:biomeStoneB:2>, <Botania:biomeStoneB2Slab>, <Botania:biomeStoneB2Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'fungal_stone_bricks', [<Botania:biomeStoneB:3>, <Botania:biomeStoneB3Slab>, <Botania:biomeStoneB3Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'swamp_stone_bricks', [<Botania:biomeStoneB:4>, <Botania:biomeStoneB4Slab>, <Botania:biomeStoneB4Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'desert_stone_bricks', [<Botania:biomeStoneB:5>, <Botania:biomeStoneB5Slab>, <Botania:biomeStoneB5Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'taiga_stone_bricks', [<Botania:biomeStoneB:6>, <Botania:biomeStoneB6Slab>, <Botania:biomeStoneB6Stairs>], 0, [], <ore:none>, 1);
cut('botania', 'mesa_stone_bricks', [<Botania:biomeStoneB:7>, <Botania:biomeStoneB7Slab>, <Botania:biomeStoneB7Stairs>], 0, [], <ore:none>, 1);

cut('TwilightForest', 'nagastone_stairs', [<TwilightForest:tile.TFNagastoneEtched>, <TwilightForest:tile.TFNagastoneStairsRight>, <TwilightForest:tile.TFNagastoneStairsLeft>], 4, [], <ore:nagastoneStairs>, 1);
cut('TwilightForest', 'nagastone_mossy_stairs', [<TwilightForest:tile.TFNagastoneEtchedMossy>, <TwilightForest:tile.TFNagastoneStairsMossyRight>, <TwilightForest:tile.TFNagastoneStairsMossyLeft>], 4, [], <ore:nagastoneStairsMossy>, 1);
cut('TwilightForest', 'nagastone_weathered_stairs', [<TwilightForest:tile.TFNagastoneEtchedWeathered>, <TwilightForest:tile.TFNagastoneStairsWeatheredRight>, <TwilightForest:tile.TFNagastoneStairsWeatheredLeft>], 4, [], <ore:nagastoneStairsWeathered>, 1);

cut('ThaumicTinkerer', 'smokey_quartz', [<ThaumicTinkerer:darkQuartz>, <ThaumicTinkerer:darkQuartzSlab>, <ThaumicTinkerer:darkQuartzStairs>], 0, [], <ore:none>, 0);

cut('CarpentersBlocks', 'carpentersblocks', [<CarpentersBlocks:blockCarpentersBlock>, <CarpentersBlocks:blockCarpentersStairs>], 5, [], <ore:none>, 0);