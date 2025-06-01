import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.data.IData;
import mods.nei.NEI;

var itemsToRemove = [
	<chisel:limestone_slab:*>,
	<chisel:marble_slab:*>,
	<chisel:marble_pillar_slab:*>,
	<chisel:aluminum_stairs.0>,
	<chisel:aluminum_stairs.0:8>,
	<chisel:aluminum_stairs.1>,
	<chisel:aluminum_stairs.1:8>,
	<chisel:aluminum_stairs.2>,
	<chisel:aluminum_stairs.2:8>,
	<chisel:limestone_stairs.0>,
	<chisel:limestone_stairs.0:8>,
	<chisel:limestone_stairs.1>,
	<chisel:limestone_stairs.1:8>,
	<chisel:limestone_stairs.2>,
	<chisel:limestone_stairs.2:8>,
	<chisel:limestone_stairs.3>,
	<chisel:limestone_stairs.3:8>,
	<chisel:limestone_stairs.4>,
	<chisel:limestone_stairs.4:8>,
	<chisel:limestone_stairs.5>,
	<chisel:limestone_stairs.5:8>,
	<chisel:limestone_stairs.6>,
	<chisel:limestone_stairs.6:8>,
	<chisel:limestone_stairs.7>,
	<chisel:limestone_stairs.7:8>,
	<chisel:ice_stairs.0>,
	<chisel:ice_stairs.0:8>,
	<chisel:ice_stairs.1>,
	<chisel:ice_stairs.1:8>,
	<chisel:ice_stairs.2>,
	<chisel:ice_stairs.2:8>,
	<chisel:ice_stairs.3>,
	<chisel:ice_stairs.3:8>,
	<chisel:ice_stairs.4>,
	<chisel:ice_stairs.4:8>,
	<chisel:ice_stairs.5>,
	<chisel:ice_stairs.5:8>,
	<chisel:ice_stairs.6>,
	<chisel:ice_stairs.6:8>,
	<chisel:ice_stairs.7>,
	<chisel:ice_stairs.7:8>,
	<chisel:marble_stairs.0>,
	<chisel:marble_stairs.0:8>,
	<chisel:marble_stairs.1>,
	<chisel:marble_stairs.1:8>,
	<chisel:marble_stairs.2>,
	<chisel:marble_stairs.2:8>,
	<chisel:marble_stairs.3>,
	<chisel:marble_stairs.3:8>,
	<chisel:marble_stairs.4>,
	<chisel:marble_stairs.4:8>,
	<chisel:marble_stairs.5>,
	<chisel:marble_stairs.5:8>,
	<chisel:marble_stairs.6>,
	<chisel:marble_stairs.6:8>,
	<chisel:marble_stairs.7>,
	<chisel:marble_stairs.7:8>,
	<chisel:packedice_stairs.0>,
	<chisel:packedice_stairs.0:8>,
	<chisel:packedice_stairs.1>,
	<chisel:packedice_stairs.1:8>,
	<chisel:packedice_stairs.2>,
	<chisel:packedice_stairs.2:8>,
	<chisel:packedice_stairs.3>,
	<chisel:packedice_stairs.3:8>,
	<chisel:packedice_stairs.4>,
	<chisel:packedice_stairs.4:8>,
	<chisel:packedice_stairs.5>,
	<chisel:packedice_stairs.5:8>,
	<chisel:packedice_stairs.6>,
	<chisel:packedice_stairs.6:8>,
	<chisel:packedice_stairs.7>,
	<chisel:packedice_stairs.7:8>,
	<etfuturum:quartz_bricks>,
	<netherlicious:QuartzWall>,
	<netherlicious:QuartzWall:3>,
	<etfuturum:red_netherbrick>,
	<etfuturum:red_netherbrick:1>,
	<etfuturum:red_netherbrick:2>,
	<etfuturum:red_netherbrick_slab>,
	<etfuturum:red_netherbrick_stairs>,
	<etfuturum:purpur_block>,
	<etfuturum:purpur_pillar>,
	<etfuturum:end_bricks>,
	<Aroma1997Core:wrench>,
	<BiomesOPlenty:misc:5>,
	<netherlicious:dye:1>,
	<BiomesOPlenty:misc:9>,
	<netherlicious:dye>,
	<BiomesOPlenty:misc:6>,
	<BiomesOPlenty:misc:8>,
	<netherlicious:dye:2>,
	<BiomesOPlenty:misc:7>,
	<netherlicious:Nugget>,
	<Pistronics2:Block of Camou>,
	<Pistronics2:Motion Block>,
	<gravestone:death_info>,
	<netherlicious:Stem2:2>,
	<netherlicious:Stem2:3>,
	<netherlicious:FullWood:6>,
	<netherlicious:FullWood:7>,
	<BiomesOPlenty:mudBricks>,
	<BiomesOPlenty:stoneSingleSlab>,
	<BiomesOPlenty:mudBricksStairs>,
	<BiomesOPlenty:gemOre:15>,
	<BiomesOPlenty:gemOre:14>,
	<BiomesOPlenty:gems:7>,
	<TravellersGear:armorstand>,
	<TravellersGear:simpleGear:5>,
	<TravellersGear:simpleGear:4>,
	<TravellersGear:simpleGear:2>,
	<TravellersGear:simpleGear:3>,
	<Botania:stone:*>,
	<etfuturum:wooden_armorstand>,
	<witchery:ingredient:52>,
	<witchery:ingredient:53>,
	<Botania:stone0Stairs:*>,
	<Botania:stone1Stairs:*>,
	<Botania:stone2Stairs:*>,
	<Botania:stone3Stairs:*>,
	<Botania:stone8Stairs:*>,
	<Botania:stone9Stairs:*>,
	<Botania:stone10Stairs:*>,
	<Botania:stone11Stairs:*>,
	<Botania:stone0Wall:*>,
	<Botania:stone0Slab:*>,
	<Botania:stone1Slab:*>,
	<Botania:stone2Slab:*>,
	<Botania:stone3Slab:*>,
	<Botania:stone8Slab:*>,
	<Botania:stone9Slab:*>,
	<Botania:stone10Slab:*>,
	<Botania:stone11Slab:*>,
	<Botania:endStoneBrick>,
	<Botania:endStoneBrick0Slab>,
	<VillageNames:prismarine:*>,
	<VillageNames:prismarine_shard>,
	<VillageNames:prismarine_crystals>,
	<VillageNames:sea_lantern>
] as IItemStack[];

var removeFromOredicts = [
	<ore:stoneAndesite>,
	<ore:stoneDiorite>,
	<ore:stoneGranite>,
	<ore:stoneAndesitePolished>,
	<ore:stoneDioritePolished>,
	<ore:stoneGranitePolished>,
	<ore:nuggetIron>,
	<ore:blockAmber>,
	<ore:dye>,
	<ore:dyeBlack>,	
	<ore:dyeBlue>,
	<ore:dyeBrown>,
	<ore:dyeWhite>,
	<ore:dyeGreen>,
	<ore:blockPrismarine>,
	<ore:blockPrismarineBrick>,
	<ore:blockPrismarineDark>,
	<ore:shardPrismarine>,
	<ore:gemPrismarine>,
	<ore:crystalPrismarine>,
	<ore:dustPrismarine>
] as IOreDictEntry[];

var groupsToRemoveFromChisel = [
	"netherlicious_Blackstone",
	"netherlicious_Basalt",
	"netherlicious_SoulSandStone",
	"quartz",
	"cobblestone",
	"stonebrick",
	"aluminum_stairs",
	"limestone_slab",
	"limestone_stairs",
	"marble_pillar_slab",
	"marble_slab",
	"marble_stairs",
	"ice_stairs",
	"packedice_stairs",
	"hempcrete",
	"hempcretesand",
	"woolen_clay",
	"voidstonePillar",
	"voidstonePillar2"
] as IData[];

for i, items in itemsToRemove {
	recipes.remove(items);

	for j, oredicts in removeFromOredicts {
		if(oredicts in items) {
			oredicts.remove(items);
		}
	}

	NEI.hide(items);
}

for g, groups in groupsToRemoveFromChisel {
	mods.chisel.Groups.removeGroup(groups);
}

NEI.addEntry(<BiomesOPlenty:woodenSingleSlab2:5>);
recipes.remove(<minecraft:sandstone:1>);
recipes.remove(<minecraft:sandstone:2>);
recipes.remove(<minecraft:stonebrick:1>);
recipes.remove(<minecraft:mossy_cobblestone>);
recipes.remove(<minecraft:quartz_block:1>);
recipes.remove(<etfuturum:red_sandstone:2>);

recipes.removeShapeless(<Botania:customBrick:4>, [<Botania:customBrick:15>]);
mods.chisel.Groups.removeVariation(<Botania:endStoneBrick>);

recipes.remove(<chisel:purpur>);
recipes.addShaped(<chisel:purpur> * 4, [
	[<etfuturum:chorus_fruit_popped>, <etfuturum:chorus_fruit_popped>],
	[<etfuturum:chorus_fruit_popped>, <etfuturum:chorus_fruit_popped>]
]);

<ore:gemQuartz>.remove(<netherlicious:VoidQuartzItem>);
<ore:stickWood>.remove(<BiomesOPlenty:bamboo>);
<ore:stickWood>.remove(<BiomesOPlenty:plants:8>);
<ore:stickWood>.remove(<aether_legacy:skyroot_stick>);

<ore:stickWoodHalf>.add(<BiomesOPlenty:bamboo>);
<ore:stickWoodHalf>.add(<BiomesOPlenty:plants:8>);
recipes.addShaped(<minecraft:stick> * 2, [
	[<ore:stickWoodHalf>],
	[<ore:stickWoodHalf>]
]);

recipes.addShaped(<etfuturum:packed_mud:1> * 4, [
	[<BiomesOPlenty:misc>, <BiomesOPlenty:misc>],
	[<BiomesOPlenty:misc>, <BiomesOPlenty:misc>]
]);

recipes.remove(<StorageDrawers:upgradeTemplate>);
recipes.addShaped(<StorageDrawers:upgradeTemplate>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
	[<ore:stickWood>, <ore:blockGlassColorless>, <ore:stickWood>],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<dmod:bundle>);
recipes.addShapeless(<dmod:bundle>, [<minecraft:string>, <ore:itemLeather>]);