import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.data.IData;

var gear = <Pistronics2:Gear>.withTag({size: 1, meta: 0, rod: 0 as byte});

recipes.remove(<Pistronics2:Mechanic Piston>);
recipes.addShaped(<Pistronics2:Mechanic Piston>, [
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[gear, <minecraft:piston>, gear],
	[<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>]
]);

recipes.remove(<Pistronics2:Mechanic Rotator>);
recipes.addShaped(<Pistronics2:Mechanic Rotator>, [
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<minecraft:piston>, gear, <minecraft:piston>],
	[<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>]
]);

recipes.remove(<Pistronics2:Rod Folder>);
recipes.addShaped(<Pistronics2:Rod Folder>, [
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[gear, <minecraft:chest>, gear],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

recipes.remove(<Pistronics2:Creative Machine>);
recipes.addShaped(<Pistronics2:Creative Machine>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<Pistronics2:Mechanic Piston>, gear, <Pistronics2:Mechanic Rotator>],
	[<ore:ingotIron>, <minecraft:comparator>, <ore:ingotIron>]
]);

recipes.addShaped(<Pistronics2:Creative Machine>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<Pistronics2:Mechanic Rotator>, gear, <Pistronics2:Mechanic Piston>],
	[<ore:ingotIron>, <minecraft:comparator>, <ore:ingotIron>]
]);

recipes.remove(<Pistronics2:Stopper>);
recipes.addShaped(<Pistronics2:Stopper> * 4, [
	[<ore:stickWood>, <ore:cobblestone>, <ore:stickWood>],
	[<ore:cobblestone>, gear, <ore:cobblestone>],
	[<ore:stickWood>, <ore:cobblestone>, <ore:stickWood>]
]);

recipes.remove(<Pistronics2:Mechanic Sensor>);
recipes.addShaped(<Pistronics2:Mechanic Sensor>, [
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[gear, <minecraft:quartz>, gear],
	[<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>]
]);

recipes.remove(<Pistronics2:The Tool>);
recipes.addShaped(<Pistronics2:The Tool>, [
	[<ore:stickWood>, null, <ore:stickWood>],
	[null, gear, null],
	[null, <ore:stickWood>, null]
]);

recipes.remove(<Pistronics2:Saw>);
recipes.addShaped(<Pistronics2:Saw>, [
	[<ore:ingotIron>],
	[gear],
	[<ore:stickWood>]
]);

recipes.remove(<Pistronics2:Spade>);
recipes.addShaped(<Pistronics2:Spade>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[null, gear, null],
	[null, <ore:stickWood>, null]
]);

var rod = <Pistronics2:Rod Block>.withTag({redstone: 0 as byte});
recipes.addShaped(rod * 8, [
	[<ore:stickWood>],
	[<ore:ingotIron>],
	[<ore:stickWood>]
]);

var extension = <Pistronics2:Extension Block>.withTag({comp: 0, redio: 0 as byte, camouID: -1, camou: 0 as byte, camouMeta: 0, super_sticky: 0 as byte, sticky: 0 as byte, redstone: 0 as byte});
recipes.addShaped(extension, [
	[<ore:slabWood>],
	[rod]
]);

recipes.removeShapeless(<Pistronics2:Glue>, [<minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:sugar>, <etfuturum:dye>]);
recipes.addShapeless(<Pistronics2:Glue>, [<minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:sugar>, <ore:dye>]);

recipes.removeShapeless(<Pistronics2:Super Glue>, [<Pistronics2:Glue>, <minecraft:dye:1>]);
recipes.addShapeless(<Pistronics2:Super Glue>, [<Pistronics2:Glue>, <ore:dyeRed>]);

recipes.removeShapeless(<Pistronics2:Redioactive Super Glue>, [<Pistronics2:Redioactive Glue>, <minecraft:dye:1>]);
recipes.addShapeless(<Pistronics2:Redioactive Super Glue>, [<Pistronics2:Redioactive Glue>, <ore:dyeRed>]);

recipes.removeShapeless(<Pistronics2:Camou Paste>, [<minecraft:nether_wart>, <minecraft:dye:1>, <minecraft:dye:2>, <etfuturum:dye:1>]);
recipes.addShapeless(<Pistronics2:Camou Paste> * 5, [<BiblioCraft:item.FramingSaw>, <ore:dye>]);
recipes.addShaped(<Pistronics2:Redioactive Super Glue>, [
	[null, <Pistronics2:Pile of Redstone>, null],
	[<Pistronics2:Pile of Redstone>, <Pistronics2:Super Glue>, <Pistronics2:Pile of Redstone>],
	[null, <Pistronics2:Pile of Redstone>, null]
]);

function pack(item as IItemStack, block as IItemStack, mult as IData) {
	if(mult == 4) {
		recipes.removeShaped(block, [
			[item, item],
			[item, item]
		]);
		recipes.addShaped(block, [
			[item, item],
			[item, item]
		]);
	}
	if(mult == 9) {
		recipes.removeShaped(block, [
			[item, item, item],
			[item, item, item],
			[item, item, item]
		]);
		recipes.addShaped(block, [
			[item, item, item],
			[item, item, item],
			[item, item, item]
		]);
	}

	recipes.removeShapeless(item * mult, [block]);
	recipes.addShapeless(item * mult, [block]);
}

pack(<minecraft:slime_ball>, <Pistronics2:Slimeblock>, 4);
pack(<Pistronics2:Glue>, <Pistronics2:Slimeblock:1>, 4);
pack(<Pistronics2:Super Glue>, <Pistronics2:Slimeblock:2>, 4);