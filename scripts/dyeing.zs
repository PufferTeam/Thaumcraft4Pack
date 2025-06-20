import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.data.IData;

function dye(oredictDye as IOreDictEntry, dye as IItemStack, petal as IItemStack, oldDye as IItemStack, oredictDyeItem as IOreDictEntry, oredictDyeDoubleItem as IOreDictEntry, dyeList as IItemStack[], dyeListDouble as IItemStack[], dyeMix as IItemStack[], dyeMixB as IItemStack[], mixed as IData, full as IData, special as IData, seal as IItemStack) {
	recipes.remove(dye);

	<ore:petal>.add(petal);

	if(mixed == true) {
		recipes.addShapeless(dye * 2, [dyeMix[0], dyeMix[1]]);
		recipes.addShapeless(oldDye * 2, [dyeMixB[0], dyeMixB[1]]);
	}

	for i, currentDye in dyeList {
		oredictDyeItem.add(currentDye);
		
		if(oredictDye in currentDye) {
			oredictDye.remove(currentDye);
		}
	}

	for i, currentDye in dyeListDouble {
		oredictDyeDoubleItem.add(currentDye);
	}

	recipes.addShapeless(dye, [oredictDyeItem]);

	if(full == true) {
		recipes.addShapeless(dye * 2, [oredictDyeDoubleItem]);
	}

	if(special == true) {
		recipes.addShapeless(dye, [oldDye]);
		oredictDye.remove(oldDye);
		<ore:dye>.remove(oldDye);
	}

	recipes.remove(seal);
	recipes.addShaped(seal, [
		[null, <Thaumcraft:ItemResource:4>, null],
		[<Thaumcraft:ItemResource:4>, oredictDye, <Thaumcraft:ItemResource:4>],
		[null, <Thaumcraft:ItemResource:4>, null]
	]);
}

dye(<ore:dyeBlue>, <etfuturum:dye:1>, <Botania:petal:11>, <minecraft:dye:4>, <ore:itemBlue>, <ore:itemBlueDouble>, [<BiomesOPlenty:flowers2:5>, <BiomesOPlenty:mushrooms:2>, <etfuturum:cornflower>, <netherlicious:GloomHibiscus>], [], [], [], false, false, true, <ThaumicExploration:blankSeal:4>);
dye(<ore:dyeBlack>, <etfuturum:dye:3>, <Botania:petal:15>, <minecraft:dye>, <ore:itemBlack>, <ore:itemBlackDouble>, [<netherlicious:WitherRose>, <BiomesOPlenty:flowers:2>, <ThaumicHorizons:inkEgg>], [], [], [], false, false, true, <ThaumicExploration:blankSeal>);
dye(<ore:dyeWhite>, <etfuturum:dye>, <Botania:petal>, <minecraft:dye:15>, <ore:itemWhite>, <ore:itemWhiteDouble>, [<BiomesOPlenty:flowers2:1>, <etfuturum:lily_of_the_valley>, <BiomesOPlenty:flowers:9>, <netherlicious:WitherRose:1>], [], [], [], false, false, true, <ThaumicExploration:blankSeal:15>);
dye(<ore:dyeBrown>, <etfuturum:dye:2>, <Botania:petal:12>, <minecraft:dye:3>, <ore:itemBrown>, <ore:itemBrownDouble>, [<BiomesOPlenty:plants:7>, <BiomesOPlenty:mushrooms:4>], [], [], [], false, false, true, <ThaumicExploration:blankSeal:3>);
dye(<ore:dyeRed>, <minecraft:dye:1>, <Botania:petal:14>, <minecraft:dye:1>, <ore:itemRed>, <ore:itemRedDouble>, [<minecraft:red_flower>, <minecraft:red_flower:4>, <BiomesOPlenty:flowers2:8>, <netherlicious:NetherFlowerShrub>, <etfuturum:beetroot>], [<minecraft:double_plant:4>, <TwilightForest:tile.TFThornRose>], [], [], false, true, false, <ThaumicExploration:blankSeal:1>);
dye(<ore:dyeGreen>, <minecraft:dye:2>, <Botania:petal:13>, <minecraft:dye:2>, <ore:itemGreen>, <ore:itemGreenDouble>, [<BiomesOPlenty:moss>, <netherlicious:NetherFlowerShrub:2>], [], [], [], false, false, false, <ThaumicExploration:blankSeal:2>);
dye(<ore:dyePurple>, <minecraft:dye:5>, <Botania:petal:10>, <Botania:dye:10>, <ore:itemPurple>, <ore:itemPurpleDouble>, [<BiomesOPlenty:flowers:8>, <BiomesOPlenty:flowers2:3>, <aether_legacy:purple_flower>, <BiomesOPlenty:coral1:15>, <netherlicious:FoxfireLily>, <BiomesOPlenty:mushrooms:5>], [], [<etfuturum:dye:1>, <minecraft:dye:1>], [<Botania:dye:11>, <Botania:dye:14>], true, false, false, <ThaumicExploration:blankSeal:5>);
dye(<ore:dyeCyan>, <minecraft:dye:6>, <Botania:petal:9>, <Botania:dye:9>, <ore:itemCyan>, <ore:itemCyanDouble>, [<BiomesOPlenty:flowers:1>], [], [<etfuturum:dye:1>, <minecraft:dye:2>], [<Botania:dye:11>, <Botania:dye:13>], true, false, false, <ThaumicExploration:blankSeal:6>);
dye(<ore:dyeLightGray>, <minecraft:dye:7>, <Botania:petal:8>, <Botania:dye:8>, <ore:itemLightGray>, <ore:itemLightGrayDouble>, [<minecraft:red_flower:3>, <minecraft:red_flower:6>, <minecraft:red_flower:8>, <BiomesOPlenty:flowers:15>], [], [<minecraft:dye:8>, <etfuturum:dye>], [<Botania:dye:7>, <Botania:dye>], true, false, false, <ThaumicExploration:blankSeal:7>);
dye(<ore:dyeGray>, <minecraft:dye:8>, <Botania:petal:7>, <Botania:dye:7>, <ore:itemGray>, <ore:itemGrayDouble>, [<BiomesOPlenty:misc:1>], [], [<etfuturum:dye:3>, <etfuturum:dye>], [<Botania:dye:15>, <Botania:dye>], true, false, false, <ThaumicExploration:blankSeal:8>);
dye(<ore:dyePink>, <minecraft:dye:9>, <Botania:petal:6>, <Botania:dye:6>, <ore:itemPink>, <ore:itemPinkDouble>, [<etfuturum:pink_petals>, <minecraft:red_flower:7>, <BiomesOPlenty:flowers:6>, <BiomesOPlenty:flowers2>, <BiomesOPlenty:coral1:12>], [<minecraft:double_plant:5>], [<minecraft:dye:1>, <etfuturum:dye>], [<Botania:dye:14>, <Botania:dye>], true, true, false, <ThaumicExploration:blankSeal:9>);
dye(<ore:dyeLime>, <minecraft:dye:10>, <Botania:petal:5>, <Botania:dye:5>, <ore:itemLime>, <ore:itemLimeDouble>, [<BiomesOPlenty:mushrooms:3>], [], [<minecraft:dye:2>, <etfuturum:dye>], [<Botania:dye:13>, <Botania:dye>], true, false, false, <ThaumicExploration:blankSeal:10>);
dye(<ore:dyeYellow>, <minecraft:dye:11>, <Botania:petal:4>, <Botania:dye:4>, <ore:itemYellow>, <ore:itemYellowDouble>, [<minecraft:yellow_flower>, <netherlicious:NetherFlowerShrub:1>, <BiomesOPlenty:flowers2:4>], [<minecraft:double_plant>], [<minecraft:dye:1>, <minecraft:dye:2>], [<Botania:dye:14>, <Botania:dye:13>], true, true, false, <ThaumicExploration:blankSeal:11>);
dye(<ore:dyeLightBlue>, <minecraft:dye:12>, <Botania:petal:3>, <Botania:dye:3>, <ore:itemLightBlue>, <ore:itemLightBlueDouble>, [<minecraft:red_flower:1>, <BiomesOPlenty:flowers:4>, <BiomesOPlenty:flowers2:7>, <BiomesOPlenty:coral1:14>, <netherlicious:WitherRose:2>], [], [<etfuturum:dye:1>, <etfuturum:dye>], [<Botania:dye:11>, <Botania:dye>], true, false, false, <ThaumicExploration:blankSeal:12>);
dye(<ore:dyeMagenta>, <minecraft:dye:13>, <Botania:petal:2>, <Botania:dye:2>, <ore:itemMagenta>, <ore:itemMagentaDouble>, [<minecraft:red_flower:2>, <BiomesOPlenty:flowers:7>], [<minecraft:double_plant:1>, <TwilightForest:tile.HugeWaterLily>], [<minecraft:dye:5>, <minecraft:dye:9>], [<Botania:dye:10>, <Botania:dye:6>], true, true, false, <ThaumicExploration:blankSeal:13>);
dye(<ore:dyeOrange>, <minecraft:dye:14>, <Botania:petal:1>, <Botania:dye:1>, <ore:itemOrange>, <ore:itemOrangeDouble>, [<minecraft:red_flower:5>, <BiomesOPlenty:flowers:5>, <BiomesOPlenty:flowers2:2>, <BiomesOPlenty:coral1:13>, <netherlicious:NetherFlowerShrub:3>], [<HardcoreEnderExpansion:crossed_decoration:6>], [<minecraft:dye:1>, <minecraft:dye:11>], [<Botania:dye:14>, <Botania:dye:4>], true, true, false, <ThaumicExploration:blankSeal:14>);