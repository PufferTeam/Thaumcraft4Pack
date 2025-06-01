var fBlock = <BiblioCraft:item.FramingSheet>;
var hBlock = <BiblioCraft:item.FramingBoard>;
var cBlock = <CarpentersBlocks:blockCarpentersBlock>;
recipes.remove(fBlock);
recipes.addShapeless(fBlock, [<BiblioCraft:item.FramingSaw>, <ore:plankWood>]);

recipes.remove(hBlock);
recipes.addShapeless(hBlock, [<BiblioCraft:item.FramingSaw>, <ore:slabWood>]);
recipes.addShapeless(hBlock, [<BiblioCraft:item.FramingSaw>, <ore:stickWood>]);

//Camou Paste
recipes.remove(<Pistronics2:Camou Paste>);
recipes.addShaped(<Pistronics2:Camou Paste> * 5, [
	[hBlock, hBlock, hBlock],
	[hBlock, <ore:dye>, hBlock],
	[hBlock, hBlock, hBlock]
]);

//Carpenter's Block
recipes.removeShaped(cBlock, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
	[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);
recipes.addShaped(cBlock * 5, [
	[hBlock, hBlock, hBlock],
	[hBlock, fBlock, hBlock],
	[hBlock, hBlock, hBlock]
]);

//Carpenter's Barrier
recipes.removeShaped(<CarpentersBlocks:blockCarpentersBarrier> * 4, [
	[null, cBlock, null],
	[<ore:stickWood>, cBlock, <ore:stickWood>]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersBarrier> * 3, [
	[fBlock, hBlock, fBlock],
	[fBlock, hBlock, fBlock]
]);

//Carpenter's Gate
recipes.removeShaped(<CarpentersBlocks:blockCarpentersGate>, [
	[<ore:stickWood>, cBlock, <ore:stickWood>],
	[<ore:stickWood>, cBlock, <ore:stickWood>]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersGate>, [
	[hBlock, fBlock, hBlock],
	[hBlock, fBlock, hBlock]
]);

//Carpenter's Ladder
recipes.removeShaped(<CarpentersBlocks:blockCarpentersLadder> * 4, [
	[cBlock, null, cBlock],
	[cBlock, cBlock, cBlock],
	[cBlock, null, cBlock]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersLadder> * 3, [
	[hBlock, null, hBlock],
	[hBlock, hBlock, hBlock],
	[hBlock, null, hBlock]
]);

//Carpenter's Door
recipes.removeShaped(<CarpentersBlocks:itemCarpentersDoor>, [
	[cBlock, cBlock],
	[cBlock, cBlock],
	[cBlock, cBlock]
]);
recipes.addShaped(<CarpentersBlocks:itemCarpentersDoor> * 2, [
	[fBlock, fBlock],
	[fBlock, fBlock],
	[fBlock, fBlock]
]);

//Carpenter's Hatch
recipes.removeShaped(<CarpentersBlocks:blockCarpentersHatch>, [
	[cBlock, cBlock, cBlock],
	[cBlock, cBlock, cBlock]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersHatch> * 4, [
	[fBlock, fBlock, fBlock],
	[fBlock, fBlock, fBlock]
]);

//Carpenter's Bed
recipes.removeShaped(<CarpentersBlocks:itemCarpentersBed>, [
	[<ore:blockCloth>, <ore:blockCloth>, <ore:blockCloth>],
	[cBlock, cBlock, cBlock]
]);
recipes.addShaped(<CarpentersBlocks:itemCarpentersBed>, [
	[<ore:blockCloth>, <ore:blockCloth>, <ore:blockCloth>],
	[fBlock, fBlock, fBlock]
]);

//Carpenter's Flower Pot
recipes.removeShaped(<CarpentersBlocks:blockCarpentersFlowerPot>, [
	[cBlock, null, cBlock],
	[null, cBlock, null]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersFlowerPot>, [
	[hBlock, null, hBlock],
	[null, hBlock, null]
]);

//Carpenter's Button
recipes.removeShapeless(<CarpentersBlocks:blockCarpentersButton>, [cBlock]);
recipes.addShapeless(<CarpentersBlocks:blockCarpentersButton>, [fBlock]);

//Carpenter's Daylight Sensor
recipes.removeShaped(<CarpentersBlocks:blockCarpentersDaylightSensor>, [
	[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
	[<minecraft:redstone>, <minecraft:dye:4>, <minecraft:redstone>],
	[cBlock, cBlock, cBlock]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersDaylightSensor>, [
	[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
	[<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>],
	[hBlock, hBlock, hBlock]
]);

//Carpenter's Lever
recipes.removeShaped(<CarpentersBlocks:blockCarpentersLever>, [
	[<ore:stickWood>],
	[cBlock]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersLever>, [
	[hBlock],
	[fBlock]
]);

//Carpenter's Torch
recipes.removeShaped(<CarpentersBlocks:blockCarpentersTorch> * 8, [
	[<minecraft:coal>],
	[cBlock]
]);
recipes.removeShaped(<CarpentersBlocks:blockCarpentersTorch> * 8, [
	[<minecraft:coal:1>],
	[cBlock]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersTorch> * 4, [
	[<minecraft:coal>],
	[hBlock]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersTorch> * 4, [
	[<minecraft:coal:1>],
	[hBlock]
]);

//Carpenter's Pressure Plate
recipes.removeShaped(<CarpentersBlocks:blockCarpentersPressurePlate>, [
	[cBlock, cBlock]
]);
recipes.addShaped(<CarpentersBlocks:blockCarpentersPressurePlate>, [
	[fBlock, fBlock]
]);

//Framed Drawer
recipes.removeShaped(<StorageDrawers:fullCustom1>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
	[null, <minecraft:chest>, null],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);
recipes.addShaped(<StorageDrawers:fullCustom1>, [
	[fBlock, fBlock, fBlock],
	[null, <minecraft:chest>, null],
	[fBlock, fBlock, fBlock]
]);

//Framed Drawer 1x2
recipes.removeShaped(<StorageDrawers:fullCustom2>, [
	[<ore:stickWood>, <minecraft:chest>, <ore:stickWood>],
	[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
	[<ore:stickWood>, <minecraft:chest>, <ore:stickWood>]
]);
recipes.addShaped(<StorageDrawers:fullCustom2>, [
	[fBlock, <minecraft:chest>, fBlock],
	[fBlock, fBlock, fBlock],
	[fBlock, <minecraft:chest>, fBlock]
]);

//Compact Framed Drawer 1x2
recipes.removeShaped(<StorageDrawers:halfCustom2>, [
	[<ore:stickWood>, <minecraft:chest>, <ore:stickWood>],
	[<ore:stickWood>, <ore:slabWood>, <ore:stickWood>],
	[<ore:stickWood>, <minecraft:chest>, <ore:stickWood>]
]);
recipes.addShaped(<StorageDrawers:halfCustom2>, [
	[hBlock, <minecraft:chest>, hBlock],
	[hBlock, hBlock, hBlock],
	[hBlock, <minecraft:chest>, hBlock]
]);

//Framed Drawer 2x2
recipes.removeShaped(<StorageDrawers:fullCustom4>, [
	[<minecraft:chest>, <ore:stickWood>, <minecraft:chest>],
	[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
	[<minecraft:chest>, <ore:stickWood>, <minecraft:chest>]
]);
recipes.addShaped(<StorageDrawers:fullCustom4>, [
	[<minecraft:chest>, fBlock, <minecraft:chest>],
	[fBlock, fBlock, fBlock],
	[<minecraft:chest>, fBlock, <minecraft:chest>]
]);

//Compact Framed Drawer 2x2
recipes.removeShaped(<StorageDrawers:halfCustom4>, [
	[<minecraft:chest>, <ore:stickWood>, <minecraft:chest>],
	[<ore:stickWood>, <ore:slabWood>, <ore:stickWood>],
	[<minecraft:chest>, <ore:stickWood>, <minecraft:chest>]
]);
recipes.addShaped(<StorageDrawers:halfCustom4>, [
	[<minecraft:chest>, hBlock, <minecraft:chest>],
	[hBlock, hBlock, hBlock],
	[<minecraft:chest>, hBlock, <minecraft:chest>]
]);

//Trim
recipes.removeShaped(<StorageDrawers:trimCustom>, [
	[<ore:plankWood>, <ore:stickWood>, <ore:plankWood>],
	[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
	[<ore:plankWood>, <ore:stickWood>, <ore:plankWood>]
]);
recipes.addShaped(<StorageDrawers:trimCustom>, [
	[hBlock, fBlock, hBlock],
	[fBlock, fBlock, fBlock],
	[hBlock, fBlock, hBlock]
]);