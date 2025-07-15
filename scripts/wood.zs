import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import minetweaker.data.IData;

function cut(type as IData, mod as IData, name as IData, blocks as IItemStack[], blocks2 as IItemStack[], blocks3 as IItemStack[], blocks4 as IItemStack[]) {
    
    //Fence 
    recipes.remove(blocks[5]);
    recipes.addShaped(blocks[5] * 4, [
        [blocks[1], blocks[3], blocks[1]],
        [blocks[1], blocks[3], blocks[1]]
    ]);

    //Trapdoor
    recipes.remove(blocks[6]);
    recipes.addShaped(blocks[6] * 2, [
        [blocks[3], blocks[3], blocks[3]],
        [blocks[3], blocks[3], blocks[3]]
    ]);

    //Fence Gate
    recipes.remove(blocks[7]);
    recipes.addShaped(blocks[7], [
        [blocks[3], blocks[1], blocks[3]],
        [blocks[3], blocks[1], blocks[3]]
    ]);

    //Door
    recipes.remove(blocks[8]);
    recipes.addShaped(blocks[8], [
        [blocks[3], blocks[3]],
        [blocks[3], blocks[3]],
        [blocks[3], blocks[3]]
    ]);

    //Sign
    recipes.remove(blocks[9]);
    recipes.addShaped(blocks[9] * 2, [
        [blocks[3], blocks[3], blocks[3]],
        [blocks[3], blocks[3], blocks[3]],
        [null, <ore:stickWood>, null]
    ]);

    //Boat
    recipes.remove(blocks[11]);
    recipes.addShaped(blocks[11], [
        [blocks[1], <cuchaz.ships:paddle>, blocks[1]],
        [blocks[1], blocks[1], blocks[1]]
    ]);

    //Boat with chest
    recipes.remove(blocks[12]);
    recipes.addShapeless(blocks[12], [blocks[11], <minecraft:chest>]);

    //Furniture Paneler
    if(type == 1) {
        recipes.remove(blocks2[0]);
    }

    //Clock
    recipes.remove(blocks2[1]);
    recipes.addShaped(blocks2[1], [
        [blocks[3], <minecraft:clock>, blocks[3]],
        [blocks[3], <ore:stickWood>, blocks[3]],
        [blocks[2], <ore:ingotGold>, blocks[2]]
    ]);

    //Painting Frame: Single Tier
    recipes.remove(blocks2[2]);
    recipes.addShaped(blocks2[2], [
        [blocks[3], blocks[3], blocks[3]],
        [blocks[3], blocks2[6], blocks[3]],
        [blocks[3], blocks[3], blocks[3]]
    ]);

    //Painting Frame: Double Tier
    recipes.remove(blocks2[3]);
    recipes.addShaped(blocks2[3], [
        [blocks[3], blocks[2], blocks[3]],
        [blocks[3], blocks2[6], blocks[3]],
        [blocks[3], blocks[2], blocks[3]]
    ]);

    //Painting Frame: Triple Tier
    recipes.remove(blocks2[4]);
    recipes.addShaped(blocks2[4], [
        [blocks[3], blocks[2], blocks[3]],
        [blocks[2], blocks2[6], blocks[2]],
        [blocks[3], blocks[2], blocks[3]]
    ]);

    //Painting Frame: Quadruple Tier
    recipes.remove(blocks2[5]);
    recipes.addShaped(blocks2[5], [
        [blocks[2], blocks[2], blocks[2]],
        [blocks[2], blocks2[6], blocks[2]],
        [blocks[2], blocks[2], blocks[2]]
    ]);

    //Painting Frame: Borderless
    recipes.remove(blocks2[6]);
    recipes.addShaped(blocks2[6], [
        [blocks[3], blocks[2], blocks[3]],
        [blocks[2], blocks[2], blocks[2]],
        [blocks[3], blocks[2], blocks[3]]
    ]);

    //Fancy Sign
    recipes.remove(blocks2[7]);
    recipes.addShapeless(blocks2[7], [blocks[9], blocks2[14], <minecraft:paper>]);

    //Fancy Workbench
    recipes.remove(blocks2[8]);
    recipes.addShapedMirrored(blocks2[8], [
        [<minecraft:feather>, <minecraft:crafting_table>, <ore:dyeBlack>],
        [blocks[3], blocks2[9], blocks[3]],
        [blocks[2], blocks[2], blocks[2]]
    ]);

    //Bookcase
    recipes.remove(blocks2[9]);
    recipes.addShaped(blocks2[9], [
        [blocks[2], blocks[3], blocks[2]],
        [blocks[2], blocks[3], blocks[2]],
        [blocks[2], blocks[3], blocks[2]]
    ]);

    //Potion Shelf
    recipes.remove(blocks2[10]);
    recipes.addShaped(blocks2[10], [
        [blocks[3], blocks[3], blocks[3]],
        [blocks[2], blocks[3], blocks[2]],
        [blocks[3], blocks[3], blocks[3]]
    ]);

    //Shelf
    recipes.remove(blocks2[11]);
    recipes.addShaped(blocks2[11], [
        [blocks[2], blocks[3], blocks[2]],
        [blocks[3], blocks[3], blocks[3]],
        [blocks[2], blocks[3], blocks[2]]
    ]);

    //Tool Rack
    recipes.remove(blocks2[12]);
    recipes.addShaped(blocks2[12], [
        [blocks[3], blocks[2], blocks[3]],
        [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
        [blocks[3], blocks[2], blocks[3]]
    ]);

    //Case
    recipes.remove(blocks2[13]);
    recipes.addShaped(blocks2[13], [
        [blocks[3], <minecraft:glass>, blocks[3]],
        [blocks[2], <minecraft:wool>, blocks[2]],
        [blocks[3], <ore:ingotIron>, blocks[3]]
    ]);

    //Label
    recipes.remove(blocks2[14]);
    recipes.addShaped(blocks2[14], [
        [null, blocks[3], null],
        [blocks[3], blocks[2], blocks[3]],
        [null, blocks[3], null]
    ]);

    //Desk
    recipes.remove(blocks2[15]);
    recipes.addShapedMirrored(blocks2[15], [
        [<minecraft:torch>, null, <minecraft:feather>],
        [blocks[2], blocks[2], blocks[2]],
        [blocks[3], null, blocks[3]]
    ]);

    //Table
    recipes.remove(blocks2[16]);
    recipes.addShaped(blocks2[16], [
        [blocks[2], blocks[2], blocks[2]],
        [null, blocks[3], null],
        [null, blocks[3], null]
    ]);

    //Map Frame
    recipes.remove(blocks2[17]);
    recipes.addShaped(blocks2[17], [
        [blocks[3], blocks[3], blocks[3]],
        [blocks[3], blocks[1], blocks[3]],
        [blocks[3], blocks[3], blocks[3]]
    ]);

    //Seat
    recipes.remove(blocks2[18]);
    recipes.addShaped(blocks2[18], [
        [null, <minecraft:wool>, null],
        [null, blocks[2], null],
        [blocks[3], blocks[3], blocks[3]]
    ]);

    //Seat Back 1
    recipes.remove(blocks2[19]);
    recipes.addShaped(blocks2[19], [
        [null, <minecraft:wool>, null],
        [null, blocks[2], null],
        [blocks[3], null, blocks[3]]
    ]);

    //Seat Back 2
    recipes.remove(blocks2[20]);
    recipes.addShaped(blocks2[20], [
        [blocks[3], <minecraft:wool>, blocks[3]],
        [blocks[3], blocks[2], blocks[3]],
        [blocks[3], null, blocks[3]]
    ]);

    //Seat Back 3
    recipes.remove(blocks2[21]);
    recipes.addShaped(blocks2[21], [
        [blocks[2]],
        [blocks2[20]]
    ]);

    //Seat Back 4
    recipes.remove(blocks2[22]);
    recipes.addShaped(blocks2[22], [
        [<minecraft:wool>],
        [blocks[2]]
    ]);

    //Seat Back 5
    recipes.remove(blocks2[23]);
    recipes.addShaped(blocks2[23], [
        [blocks[2], blocks2[20], blocks[2]]
    ]);

    //Drawers
    recipes.remove(blocks3[0]);
    recipes.addShaped(blocks3[0], [
        [blocks[1], blocks[1], blocks[1]],
        [null, <minecraft:chest>, null],
        [blocks[1], blocks[1], blocks[1]]
    ]);

    //Drawers 1x2
    recipes.remove(blocks3[1]);
    recipes.addShaped(blocks3[1], [
        [blocks[1], <minecraft:chest>, blocks[1]],
        [blocks[1], blocks[1], blocks[1]],
        [blocks[1], <minecraft:chest>, blocks[1]]
    ]);

    //Drawers 2x2
    recipes.remove(blocks3[2]);
    recipes.addShaped(blocks3[2], [
        [<minecraft:chest>, blocks[1], <minecraft:chest>],
        [blocks[1], blocks[1], blocks[1]],
        [<minecraft:chest>, blocks[1], <minecraft:chest>]
    ]);

    //Half Drawers 1x2
    recipes.remove(blocks3[3]);
    recipes.addShaped(blocks3[3], [
        [blocks[2], <minecraft:chest>, blocks[2]],
        [blocks[2], blocks[2], blocks[2]],
        [blocks[2], <minecraft:chest>, blocks[2]]
    ]);

    //Half Drawers 2x2
    recipes.remove(blocks3[4]);
    recipes.addShaped(blocks3[4], [
        [<minecraft:chest>, blocks[2], <minecraft:chest>],
        [blocks[2], blocks[2], blocks[2]],
        [<minecraft:chest>, blocks[2], <minecraft:chest>]
    ]);

    //Trim
    recipes.remove(blocks3[5]);
    mods.chisel.Groups.addVariation(name, blocks3[5]);

    //Wood Post
    recipes.remove(blocks4[0]);
    recipes.addShapeless(blocks4[0] * 4, [blocks[0], <ore:toolAxe>]);
}

cut(1, 'minecraft', 'oak_planks', [<minecraft:log>, <minecraft:planks>, <minecraft:wooden_slab>, <TConstruct:oak_lumber>, <minecraft:wooden_pressure_plate>, <minecraft:fence>, <minecraft:trapdoor>, <minecraft:fence_gate>, <minecraft:wooden_door>, <minecraft:sign>, <minecraft:wooden_button>, <minecraft:boat>, <etfuturum:oak_chest_boat>], [<BiblioCraft:BiblioPaneler>, <BiblioCraft:BiblioClock>, <BiblioCraft:BiblioFlatPainting>, <BiblioCraft:BiblioSimplePainting>, <BiblioCraft:BiblioMiddlePainting>, <BiblioCraft:BiblioFancyPainting>, <BiblioCraft:BiblioBorderlessPainting>, <BiblioCraft:BiblioFancySign>, <BiblioCraft:BiblioWorkbench>, <BiblioCraft:Bibliotheca>, <BiblioCraft:BiblioPotionShelf>, <BiblioCraft:BiblioShelf>, <BiblioCraft:BiblioRack>, <BiblioCraft:BiblioCase>, <BiblioCraft:BiblioLabel>, <BiblioCraft:BiblioDesk>, <BiblioCraft:BiblioTable>, <BiblioCraft:BiblioMapFrames>, <BiblioCraft:BiblioSeats>, <BiblioCraft:item.seatBack>, <BiblioCraft:item.seatBack2>, <BiblioCraft:item.seatBack3>, <BiblioCraft:item.seatBack4>, <BiblioCraft:item.seatBack5>], [<StorageDrawers:fullDrawers1>, <StorageDrawers:fullDrawers2>, <StorageDrawers:fullDrawers4>, <StorageDrawers:halfDrawers2>, <StorageDrawers:halfDrawers4>, <StorageDrawers:trim>], [<GardenTrees:thin_log>, <GardenTrees:thin_log_fence>]);
cut(1, 'minecraft', 'spruce_planks', [<minecraft:log:1>, <minecraft:planks:1>, <minecraft:wooden_slab:1>, <TConstruct:spruce_lumber>, <etfuturum:pressure_plate_spruce>, <etfuturum:fence_spruce>, <etfuturum:trapdoor_spruce>, <etfuturum:fence_gate_spruce>, <etfuturum:door_spruce>, <etfuturum:item_sign_spruce>, <etfuturum:button_spruce>, <etfuturum:spruce_boat>, <etfuturum:spruce_chest_boat>], [<BiblioCraft:BiblioPaneler:1>, <BiblioCraft:BiblioClock:1>, <BiblioCraft:BiblioFlatPainting:1>, <BiblioCraft:BiblioSimplePainting:1>, <BiblioCraft:BiblioMiddlePainting:1>, <BiblioCraft:BiblioFancyPainting:1>, <BiblioCraft:BiblioBorderlessPainting:1>, <BiblioCraft:BiblioFancySign:1>, <BiblioCraft:BiblioWorkbench:1>, <BiblioCraft:Bibliotheca:1>, <BiblioCraft:BiblioPotionShelf:1>, <BiblioCraft:BiblioShelf:1>, <BiblioCraft:BiblioRack:1>, <BiblioCraft:BiblioCase:1>, <BiblioCraft:BiblioLabel:1>, <BiblioCraft:BiblioDesk:1>, <BiblioCraft:BiblioTable:1>, <BiblioCraft:BiblioMapFrames:1>, <BiblioCraft:BiblioSeats:1>, <BiblioCraft:item.seatBack:1>, <BiblioCraft:item.seatBack2:1>, <BiblioCraft:item.seatBack3:1>, <BiblioCraft:item.seatBack4:1>, <BiblioCraft:item.seatBack5:1>], [<StorageDrawers:fullDrawers1:1>, <StorageDrawers:fullDrawers2:1>, <StorageDrawers:fullDrawers4:1>, <StorageDrawers:halfDrawers2:1>, <StorageDrawers:halfDrawers4:1>, <StorageDrawers:trim:1>], [<GardenTrees:thin_log:1>, <GardenTrees:thin_log_fence:1>]);
cut(1, 'minecraft', 'birch_planks', [<minecraft:log:2>, <minecraft:planks:2>, <minecraft:wooden_slab:2>, <TConstruct:birch_lumber>, <etfuturum:pressure_plate_birch>, <etfuturum:fence_birch>, <etfuturum:trapdoor_birch>, <etfuturum:fence_gate_birch>, <etfuturum:door_birch>, <etfuturum:item_sign_birch>, <etfuturum:button_birch>, <etfuturum:birch_boat>, <etfuturum:birch_chest_boat>], [<BiblioCraft:BiblioPaneler:2>, <BiblioCraft:BiblioClock:2>, <BiblioCraft:BiblioFlatPainting:2>, <BiblioCraft:BiblioSimplePainting:2>, <BiblioCraft:BiblioMiddlePainting:2>, <BiblioCraft:BiblioFancyPainting:2>, <BiblioCraft:BiblioBorderlessPainting:2>, <BiblioCraft:BiblioFancySign:2>, <BiblioCraft:BiblioWorkbench:2>, <BiblioCraft:Bibliotheca:2>, <BiblioCraft:BiblioPotionShelf:2>, <BiblioCraft:BiblioShelf:2>, <BiblioCraft:BiblioRack:2>, <BiblioCraft:BiblioCase:2>, <BiblioCraft:BiblioLabel:2>, <BiblioCraft:BiblioDesk:2>, <BiblioCraft:BiblioTable:2>, <BiblioCraft:BiblioMapFrames:2>, <BiblioCraft:BiblioSeats:2>, <BiblioCraft:item.seatBack:2>, <BiblioCraft:item.seatBack2:2>, <BiblioCraft:item.seatBack3:2>, <BiblioCraft:item.seatBack4:2>, <BiblioCraft:item.seatBack5:2>], [<StorageDrawers:fullDrawers1:2>, <StorageDrawers:fullDrawers2:2>, <StorageDrawers:fullDrawers4:2>, <StorageDrawers:halfDrawers2:2>, <StorageDrawers:halfDrawers4:2>, <StorageDrawers:trim:2>], [<GardenTrees:thin_log:2>, <GardenTrees:thin_log_fence:2>]);
cut(1, 'minecraft', 'jungle_planks', [<minecraft:log:3>, <minecraft:planks:3>, <minecraft:wooden_slab:3>, <TConstruct:jungle_lumber>, <etfuturum:pressure_plate_jungle>, <etfuturum:fence_jungle>, <etfuturum:trapdoor_jungle>, <etfuturum:fence_gate_jungle>, <etfuturum:door_jungle>, <etfuturum:item_sign_jungle>, <etfuturum:button_jungle>, <etfuturum:jungle_boat>, <etfuturum:jungle_chest_boat>], [<BiblioCraft:BiblioPaneler:3>, <BiblioCraft:BiblioClock:3>, <BiblioCraft:BiblioFlatPainting:3>, <BiblioCraft:BiblioSimplePainting:3>, <BiblioCraft:BiblioMiddlePainting:3>, <BiblioCraft:BiblioFancyPainting:3>, <BiblioCraft:BiblioBorderlessPainting:3>, <BiblioCraft:BiblioFancySign:3>, <BiblioCraft:BiblioWorkbench:3>, <BiblioCraft:Bibliotheca:3>, <BiblioCraft:BiblioPotionShelf:3>, <BiblioCraft:BiblioShelf:3>, <BiblioCraft:BiblioRack:3>, <BiblioCraft:BiblioCase:3>, <BiblioCraft:BiblioLabel:3>, <BiblioCraft:BiblioDesk:3>, <BiblioCraft:BiblioTable:3>, <BiblioCraft:BiblioMapFrames:3>, <BiblioCraft:BiblioSeats:3>, <BiblioCraft:item.seatBack:3>, <BiblioCraft:item.seatBack2:3>, <BiblioCraft:item.seatBack3:3>, <BiblioCraft:item.seatBack4:3>, <BiblioCraft:item.seatBack5:3>], [<StorageDrawers:fullDrawers1:3>, <StorageDrawers:fullDrawers2:3>, <StorageDrawers:fullDrawers4:3>, <StorageDrawers:halfDrawers2:3>, <StorageDrawers:halfDrawers4:3>, <StorageDrawers:trim:3>], [<GardenTrees:thin_log:3>, <GardenTrees:thin_log_fence:3>]);
cut(1, 'minecraft', 'acacia_planks', [<minecraft:log2>, <minecraft:planks:4>, <minecraft:wooden_slab:4>, <TConstruct:acacia_lumber>, <etfuturum:pressure_plate_acacia>, <etfuturum:fence_acacia>, <etfuturum:trapdoor_acacia>, <etfuturum:fence_gate_acacia>, <etfuturum:door_acacia>, <etfuturum:item_sign_acacia>, <etfuturum:button_acacia>, <etfuturum:acacia_boat>, <etfuturum:acacia_chest_boat>], [<BiblioCraft:BiblioPaneler:4>, <BiblioCraft:BiblioClock:4>, <BiblioCraft:BiblioFlatPainting:4>, <BiblioCraft:BiblioSimplePainting:4>, <BiblioCraft:BiblioMiddlePainting:4>, <BiblioCraft:BiblioFancyPainting:4>, <BiblioCraft:BiblioBorderlessPainting:4>, <BiblioCraft:BiblioFancySign:4>, <BiblioCraft:BiblioWorkbench:4>, <BiblioCraft:Bibliotheca:4>, <BiblioCraft:BiblioPotionShelf:4>, <BiblioCraft:BiblioShelf:4>, <BiblioCraft:BiblioRack:4>, <BiblioCraft:BiblioCase:4>, <BiblioCraft:BiblioLabel:4>, <BiblioCraft:BiblioDesk:4>, <BiblioCraft:BiblioTable:4>, <BiblioCraft:BiblioMapFrames:4>, <BiblioCraft:BiblioSeats:4>, <BiblioCraft:item.seatBack:4>, <BiblioCraft:item.seatBack2:4>, <BiblioCraft:item.seatBack3:4>, <BiblioCraft:item.seatBack4:4>, <BiblioCraft:item.seatBack5:4>], [<StorageDrawers:fullDrawers1:4>, <StorageDrawers:fullDrawers2:4>, <StorageDrawers:fullDrawers4:4>, <StorageDrawers:halfDrawers2:4>, <StorageDrawers:halfDrawers4:4>, <StorageDrawers:trim:4>], [<GardenTrees:thin_log:4>, <GardenTrees:thin_log_fence:4>]);
cut(1, 'minecraft', 'dark_oak_planks', [<minecraft:log2:1>, <minecraft:planks:5>, <minecraft:wooden_slab:5>, <TConstruct:dark_oak_lumber>, <etfuturum:pressure_plate_dark_oak>, <etfuturum:fence_dark_oak>, <etfuturum:trapdoor_dark_oak>, <etfuturum:fence_gate_dark_oak>, <etfuturum:door_dark_oak>, <etfuturum:item_sign_dark_oak>, <etfuturum:button_dark_oak>, <etfuturum:dark_oak_boat>, <etfuturum:dark_oak_chest_boat>], [<BiblioCraft:BiblioPaneler:5>, <BiblioCraft:BiblioClock:5>, <BiblioCraft:BiblioFlatPainting:5>, <BiblioCraft:BiblioSimplePainting:5>, <BiblioCraft:BiblioMiddlePainting:5>, <BiblioCraft:BiblioFancyPainting:5>, <BiblioCraft:BiblioBorderlessPainting:5>, <BiblioCraft:BiblioFancySign:5>, <BiblioCraft:BiblioWorkbench:5>, <BiblioCraft:Bibliotheca:5>, <BiblioCraft:BiblioPotionShelf:5>, <BiblioCraft:BiblioShelf:5>, <BiblioCraft:BiblioRack:5>, <BiblioCraft:BiblioCase:5>, <BiblioCraft:BiblioLabel:5>, <BiblioCraft:BiblioDesk:5>, <BiblioCraft:BiblioTable:5>, <BiblioCraft:BiblioMapFrames:5>, <BiblioCraft:BiblioSeats:5>, <BiblioCraft:item.seatBack:5>, <BiblioCraft:item.seatBack2:5>, <BiblioCraft:item.seatBack3:5>, <BiblioCraft:item.seatBack4:5>, <BiblioCraft:item.seatBack5:5>], [<StorageDrawers:fullDrawers1:5>, <StorageDrawers:fullDrawers2:5>, <StorageDrawers:fullDrawers4:5>, <StorageDrawers:halfDrawers2:5>, <StorageDrawers:halfDrawers4:5>, <StorageDrawers:trim:5>], [<GardenTrees:thin_log:5>, <GardenTrees:thin_log_fence:5>]);
cut(2, 'biomesoplenty', 'sacredoak_planks', [<BiomesOPlenty:logs1>, <BiomesOPlenty:planks>, <BiomesOPlenty:woodenSingleSlab1>, <TConstruct:sacredoak_lumber>, <etfuturum:bop_sacredoak_pressure_plate>, <etfuturum:bop_wood_fence>, <etfuturum:bop_sacredoak_trapdoor>, <etfuturum:bop_sacredoak_fence_gate>, <etfuturum:bop_sacredoak_door>, <etfuturum:bop_sacredoak_sign>, <etfuturum:bop_sacredoak_button>, <etfuturum:bop_sacredoak_boat>, <etfuturum:bop_sacredoak_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock>, <BiblioWoodsBoP:BiblioWoodPaintingT1>, <BiblioWoodsBoP:BiblioWoodPaintingT2>, <BiblioWoodsBoP:BiblioWoodPaintingT3>, <BiblioWoodsBoP:BiblioWoodPaintingT4>, <BiblioWoodsBoP:BiblioWoodPaintingT0>, <BiblioWoodsBoP:BiblioWoodFancySign>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench>, <BiblioWoodsBoP:BiblioWoodBookcase>, <BiblioWoodsBoP:BiblioWoodpotshelf>, <BiblioWoodsBoP:BiblioWoodshelf>, <BiblioWoodsBoP:BiblioWoodrack>, <BiblioWoodsBoP:BiblioWoodcase>, <BiblioWoodsBoP:BiblioWoodlabel>, <BiblioWoodsBoP:BiblioWooddesk>, <BiblioWoodsBoP:BiblioWoodtable>, <BiblioWoodsBoP:BiblioWoodMapFrame>, <BiblioWoodsBoP:BiblioWoodSeat>, <BiblioWoodsBoP:seatBack1>, <BiblioWoodsBoP:seatBack2>, <BiblioWoodsBoP:seatBack3>, <BiblioWoodsBoP:seatBack4>, <BiblioWoodsBoP:seatBack5>], [<StorageDrawersBop:fullDrawers1>, <StorageDrawersBop:fullDrawers2>, <StorageDrawersBop:fullDrawers4>, <StorageDrawersBop:halfDrawers2>, <StorageDrawersBop:halfDrawers4>, <StorageDrawersBop:trim>], [<GardenTrees:bop_thin_log>, <GardenTrees:bop_thin_log_fence>]);
cut(2, 'biomesoplenty', 'cherry_planks', [<BiomesOPlenty:logs1:1>, <BiomesOPlenty:planks:1>, <BiomesOPlenty:woodenSingleSlab1:1>, <TConstruct:cherry_lumber>, <etfuturum:bop_cherry_pressure_plate>, <etfuturum:bop_wood_fence:1>, <etfuturum:bop_cherry_trapdoor>, <etfuturum:bop_cherry_fence_gate>, <etfuturum:bop_cherry_door>, <etfuturum:bop_cherry_sign>, <etfuturum:bop_cherry_button>, <etfuturum:bop_cherry_boat>, <etfuturum:bop_cherry_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:1>, <BiblioWoodsBoP:BiblioWoodPaintingT1:1>, <BiblioWoodsBoP:BiblioWoodPaintingT2:1>, <BiblioWoodsBoP:BiblioWoodPaintingT3:1>, <BiblioWoodsBoP:BiblioWoodPaintingT4:1>, <BiblioWoodsBoP:BiblioWoodPaintingT0:1>, <BiblioWoodsBoP:BiblioWoodFancySign:1>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:1>, <BiblioWoodsBoP:BiblioWoodBookcase:1>, <BiblioWoodsBoP:BiblioWoodpotshelf:1>, <BiblioWoodsBoP:BiblioWoodshelf:1>, <BiblioWoodsBoP:BiblioWoodrack:1>, <BiblioWoodsBoP:BiblioWoodcase:1>, <BiblioWoodsBoP:BiblioWoodlabel:1>, <BiblioWoodsBoP:BiblioWooddesk:1>, <BiblioWoodsBoP:BiblioWoodtable:1>, <BiblioWoodsBoP:BiblioWoodMapFrame:1>, <BiblioWoodsBoP:BiblioWoodSeat:1>, <BiblioWoodsBoP:seatBack1:1>, <BiblioWoodsBoP:seatBack2:1>, <BiblioWoodsBoP:seatBack3:1>, <BiblioWoodsBoP:seatBack4:1>, <BiblioWoodsBoP:seatBack5:1>], [<StorageDrawersBop:fullDrawers1:1>, <StorageDrawersBop:fullDrawers2:1>, <StorageDrawersBop:fullDrawers4:1>, <StorageDrawersBop:halfDrawers2:1>, <StorageDrawersBop:halfDrawers4:1>, <StorageDrawersBop:trim:1>], [<GardenTrees:bop_thin_log:1>, <GardenTrees:bop_thin_log_fence:1>]);
cut(2, 'biomesoplenty', 'dark_planks', [<BiomesOPlenty:logs1:2>, <BiomesOPlenty:planks:2>, <BiomesOPlenty:woodenSingleSlab1:2>, <TConstruct:dark_lumber>, <etfuturum:bop_dark_pressure_plate>, <etfuturum:bop_wood_fence:2>, <etfuturum:bop_dark_trapdoor>, <etfuturum:bop_dark_fence_gate>, <etfuturum:bop_dark_door>, <etfuturum:bop_dark_sign>, <etfuturum:bop_dark_button>, <etfuturum:bop_dark_boat>, <etfuturum:bop_dark_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:2>, <BiblioWoodsBoP:BiblioWoodPaintingT1:2>, <BiblioWoodsBoP:BiblioWoodPaintingT2:2>, <BiblioWoodsBoP:BiblioWoodPaintingT3:2>, <BiblioWoodsBoP:BiblioWoodPaintingT4:2>, <BiblioWoodsBoP:BiblioWoodPaintingT0:2>, <BiblioWoodsBoP:BiblioWoodFancySign:2>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:2>, <BiblioWoodsBoP:BiblioWoodBookcase:2>, <BiblioWoodsBoP:BiblioWoodpotshelf:2>, <BiblioWoodsBoP:BiblioWoodshelf:2>, <BiblioWoodsBoP:BiblioWoodrack:2>, <BiblioWoodsBoP:BiblioWoodcase:2>, <BiblioWoodsBoP:BiblioWoodlabel:2>, <BiblioWoodsBoP:BiblioWooddesk:2>, <BiblioWoodsBoP:BiblioWoodtable:2>, <BiblioWoodsBoP:BiblioWoodMapFrame:2>, <BiblioWoodsBoP:BiblioWoodSeat:2>, <BiblioWoodsBoP:seatBack1:2>, <BiblioWoodsBoP:seatBack2:2>, <BiblioWoodsBoP:seatBack3:2>, <BiblioWoodsBoP:seatBack4:2>, <BiblioWoodsBoP:seatBack5:2>], [<StorageDrawersBop:fullDrawers1:2>, <StorageDrawersBop:fullDrawers2:2>, <StorageDrawersBop:fullDrawers4:2>, <StorageDrawersBop:halfDrawers2:2>, <StorageDrawersBop:halfDrawers4:2>, <StorageDrawersBop:trim:2>], [<GardenTrees:bop_thin_log:2>, <GardenTrees:bop_thin_log_fence:2>]);
cut(2, 'biomesoplenty', 'fir_planks', [<BiomesOPlenty:logs1:3>, <BiomesOPlenty:planks:3>, <BiomesOPlenty:woodenSingleSlab1:3>, <TConstruct:fir_lumber>, <etfuturum:bop_fir_pressure_plate>, <etfuturum:bop_wood_fence:3>, <etfuturum:bop_fir_trapdoor>, <etfuturum:bop_fir_fence_gate>, <etfuturum:bop_fir_door>, <etfuturum:bop_fir_sign>, <etfuturum:bop_fir_button>, <etfuturum:bop_fir_boat>, <etfuturum:bop_fir_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:3>, <BiblioWoodsBoP:BiblioWoodPaintingT1:3>, <BiblioWoodsBoP:BiblioWoodPaintingT2:3>, <BiblioWoodsBoP:BiblioWoodPaintingT3:3>, <BiblioWoodsBoP:BiblioWoodPaintingT4:3>, <BiblioWoodsBoP:BiblioWoodPaintingT0:3>, <BiblioWoodsBoP:BiblioWoodFancySign:3>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:3>, <BiblioWoodsBoP:BiblioWoodBookcase:3>, <BiblioWoodsBoP:BiblioWoodpotshelf:3>, <BiblioWoodsBoP:BiblioWoodshelf:3>, <BiblioWoodsBoP:BiblioWoodrack:3>, <BiblioWoodsBoP:BiblioWoodcase:3>, <BiblioWoodsBoP:BiblioWoodlabel:3>, <BiblioWoodsBoP:BiblioWooddesk:3>, <BiblioWoodsBoP:BiblioWoodtable:3>, <BiblioWoodsBoP:BiblioWoodMapFrame:3>, <BiblioWoodsBoP:BiblioWoodSeat:3>, <BiblioWoodsBoP:seatBack1:3>, <BiblioWoodsBoP:seatBack2:3>, <BiblioWoodsBoP:seatBack3:3>, <BiblioWoodsBoP:seatBack4:3>, <BiblioWoodsBoP:seatBack5:3>], [<StorageDrawersBop:fullDrawers1:3>, <StorageDrawersBop:fullDrawers2:3>, <StorageDrawersBop:fullDrawers4:3>, <StorageDrawersBop:halfDrawers2:3>, <StorageDrawersBop:halfDrawers4:3>, <StorageDrawersBop:trim:3>], [<GardenTrees:bop_thin_log:3>, <GardenTrees:bop_thin_log_fence:3>]);
cut(2, 'biomesoplenty', 'ethereal_planks', [<BiomesOPlenty:logs2>, <BiomesOPlenty:planks:4>, <BiomesOPlenty:woodenSingleSlab1:4>, <TConstruct:ethereal_lumber>, <etfuturum:bop_ethereal_pressure_plate>, <etfuturum:bop_wood_fence:4>, <etfuturum:bop_ethereal_trapdoor>, <etfuturum:bop_ethereal_fence_gate>, <etfuturum:bop_ethereal_door>, <etfuturum:bop_ethereal_sign>, <etfuturum:bop_ethereal_button>, <etfuturum:bop_ethereal_boat>, <etfuturum:bop_ethereal_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:5>, <BiblioWoodsBoP:BiblioWoodPaintingT1:5>, <BiblioWoodsBoP:BiblioWoodPaintingT2:5>, <BiblioWoodsBoP:BiblioWoodPaintingT3:5>, <BiblioWoodsBoP:BiblioWoodPaintingT4:5>, <BiblioWoodsBoP:BiblioWoodPaintingT0:5>, <BiblioWoodsBoP:BiblioWoodFancySign:5>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:5>, <BiblioWoodsBoP:BiblioWoodBookcase:5>, <BiblioWoodsBoP:BiblioWoodpotshelf:5>, <BiblioWoodsBoP:BiblioWoodshelf:5>, <BiblioWoodsBoP:BiblioWoodrack:5>, <BiblioWoodsBoP:BiblioWoodcase:5>, <BiblioWoodsBoP:BiblioWoodlabel:5>, <BiblioWoodsBoP:BiblioWooddesk:5>, <BiblioWoodsBoP:BiblioWoodtable:5>, <BiblioWoodsBoP:BiblioWoodMapFrame:5>, <BiblioWoodsBoP:BiblioWoodSeat:5>, <BiblioWoodsBoP:seatBack1:5>, <BiblioWoodsBoP:seatBack2:5>, <BiblioWoodsBoP:seatBack3:5>, <BiblioWoodsBoP:seatBack4:5>, <BiblioWoodsBoP:seatBack5:5>], [<StorageDrawersBop:fullDrawers1:4>, <StorageDrawersBop:fullDrawers2:4>, <StorageDrawersBop:fullDrawers4:4>, <StorageDrawersBop:halfDrawers2:4>, <StorageDrawersBop:halfDrawers4:4>, <StorageDrawersBop:trim:4>], [<GardenTrees:bop_thin_log:4>, <GardenTrees:bop_thin_log_fence:4>]);
cut(2, 'biomesoplenty', 'magic_planks', [<BiomesOPlenty:logs2:1>, <BiomesOPlenty:planks:5>, <BiomesOPlenty:woodenSingleSlab1:5>, <TConstruct:magic_lumber>, <etfuturum:bop_magic_pressure_plate>, <etfuturum:bop_wood_fence:5>, <etfuturum:bop_magic_trapdoor>, <etfuturum:bop_magic_fence_gate>, <etfuturum:bop_magic_door>, <etfuturum:bop_magic_sign>, <etfuturum:bop_magic_button>, <etfuturum:bop_magic_boat>, <etfuturum:bop_magic_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:7>, <BiblioWoodsBoP:BiblioWoodPaintingT1:7>, <BiblioWoodsBoP:BiblioWoodPaintingT2:7>, <BiblioWoodsBoP:BiblioWoodPaintingT3:7>, <BiblioWoodsBoP:BiblioWoodPaintingT4:7>, <BiblioWoodsBoP:BiblioWoodPaintingT0:7>, <BiblioWoodsBoP:BiblioWoodFancySign:7>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:7>, <BiblioWoodsBoP:BiblioWoodBookcase:7>, <BiblioWoodsBoP:BiblioWoodpotshelf:7>, <BiblioWoodsBoP:BiblioWoodshelf:7>, <BiblioWoodsBoP:BiblioWoodrack:7>, <BiblioWoodsBoP:BiblioWoodcase:7>, <BiblioWoodsBoP:BiblioWoodlabel:7>, <BiblioWoodsBoP:BiblioWooddesk:7>, <BiblioWoodsBoP:BiblioWoodtable:7>, <BiblioWoodsBoP:BiblioWoodMapFrame:7>, <BiblioWoodsBoP:BiblioWoodSeat:7>, <BiblioWoodsBoP:seatBack1:7>, <BiblioWoodsBoP:seatBack2:7>, <BiblioWoodsBoP:seatBack3:7>, <BiblioWoodsBoP:seatBack4:7>, <BiblioWoodsBoP:seatBack5:7>], [<StorageDrawersBop:fullDrawers1:5>, <StorageDrawersBop:fullDrawers2:5>, <StorageDrawersBop:fullDrawers4:5>, <StorageDrawersBop:halfDrawers2:5>, <StorageDrawersBop:halfDrawers4:5>, <StorageDrawersBop:trim:5>], [<GardenTrees:bop_thin_log:5>, <GardenTrees:bop_thin_log_fence:5>]);
cut(2, 'biomesoplenty', 'mangrove_planks', [<BiomesOPlenty:logs2:2>, <BiomesOPlenty:planks:6>, <BiomesOPlenty:woodenSingleSlab1:6>, <TConstruct:mangrove_lumber>, <etfuturum:bop_mangrove_pressure_plate>, <etfuturum:bop_wood_fence:6>, <etfuturum:bop_mangrove_trapdoor>, <etfuturum:bop_mangrove_fence_gate>, <etfuturum:bop_mangrove_door>, <etfuturum:bop_mangrove_sign>, <etfuturum:bop_mangrove_button>, <etfuturum:bop_mangrove_boat>, <etfuturum:bop_mangrove_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:8>, <BiblioWoodsBoP:BiblioWoodPaintingT1:8>, <BiblioWoodsBoP:BiblioWoodPaintingT2:8>, <BiblioWoodsBoP:BiblioWoodPaintingT3:8>, <BiblioWoodsBoP:BiblioWoodPaintingT4:8>, <BiblioWoodsBoP:BiblioWoodPaintingT0:8>, <BiblioWoodsBoP:BiblioWoodFancySign:8>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:8>, <BiblioWoodsBoP:BiblioWoodBookcase:8>, <BiblioWoodsBoP:BiblioWoodpotshelf:8>, <BiblioWoodsBoP:BiblioWoodshelf:8>, <BiblioWoodsBoP:BiblioWoodrack:8>, <BiblioWoodsBoP:BiblioWoodcase:8>, <BiblioWoodsBoP:BiblioWoodlabel:8>, <BiblioWoodsBoP:BiblioWooddesk:8>, <BiblioWoodsBoP:BiblioWoodtable:8>, <BiblioWoodsBoP:BiblioWoodMapFrame:8>, <BiblioWoodsBoP:BiblioWoodSeat:8>, <BiblioWoodsBoP:seatBack1:8>, <BiblioWoodsBoP:seatBack2:8>, <BiblioWoodsBoP:seatBack3:8>, <BiblioWoodsBoP:seatBack4:8>, <BiblioWoodsBoP:seatBack5:8>], [<StorageDrawersBop:fullDrawers1:6>, <StorageDrawersBop:fullDrawers2:6>, <StorageDrawersBop:fullDrawers4:6>, <StorageDrawersBop:halfDrawers2:6>, <StorageDrawersBop:halfDrawers4:6>, <StorageDrawersBop:trim:6>], [<GardenTrees:bop_thin_log:6>, <GardenTrees:bop_thin_log_fence:6>]);
cut(2, 'biomesoplenty', 'palm_planks', [<BiomesOPlenty:logs2:3>, <BiomesOPlenty:planks:7>, <BiomesOPlenty:woodenSingleSlab1:7>, <TConstruct:palm_lumber>, <etfuturum:bop_palm_pressure_plate>, <etfuturum:bop_wood_fence:7>, <etfuturum:bop_palm_trapdoor>, <etfuturum:bop_palm_fence_gate>, <etfuturum:bop_palm_door>, <etfuturum:bop_palm_sign>, <etfuturum:bop_palm_button>, <etfuturum:bop_palm_boat>, <etfuturum:bop_palm_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:9>, <BiblioWoodsBoP:BiblioWoodPaintingT1:9>, <BiblioWoodsBoP:BiblioWoodPaintingT2:9>, <BiblioWoodsBoP:BiblioWoodPaintingT3:9>, <BiblioWoodsBoP:BiblioWoodPaintingT4:9>, <BiblioWoodsBoP:BiblioWoodPaintingT0:9>, <BiblioWoodsBoP:BiblioWoodFancySign:9>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:9>, <BiblioWoodsBoP:BiblioWoodBookcase:9>, <BiblioWoodsBoP:BiblioWoodpotshelf:9>, <BiblioWoodsBoP:BiblioWoodshelf:9>, <BiblioWoodsBoP:BiblioWoodrack:9>, <BiblioWoodsBoP:BiblioWoodcase:9>, <BiblioWoodsBoP:BiblioWoodlabel:9>, <BiblioWoodsBoP:BiblioWooddesk:9>, <BiblioWoodsBoP:BiblioWoodtable:9>, <BiblioWoodsBoP:BiblioWoodMapFrame:9>, <BiblioWoodsBoP:BiblioWoodSeat:9>, <BiblioWoodsBoP:seatBack1:9>, <BiblioWoodsBoP:seatBack2:9>, <BiblioWoodsBoP:seatBack3:9>, <BiblioWoodsBoP:seatBack4:9>, <BiblioWoodsBoP:seatBack5:9>], [<StorageDrawersBop:fullDrawers1:7>, <StorageDrawersBop:fullDrawers2:7>, <StorageDrawersBop:fullDrawers4:7>, <StorageDrawersBop:halfDrawers2:7>, <StorageDrawersBop:halfDrawers4:7>, <StorageDrawersBop:trim:7>], [<GardenTrees:bop_thin_log:7>, <GardenTrees:bop_thin_log_fence:7>]);
cut(2, 'biomesoplenty', 'redwood_planks', [<BiomesOPlenty:logs3>, <BiomesOPlenty:planks:8>, <BiomesOPlenty:woodenSingleSlab2>, <TConstruct:redwood_lumber>, <etfuturum:bop_redwood_pressure_plate>, <etfuturum:bop_wood_fence:8>, <etfuturum:bop_redwood_trapdoor>, <etfuturum:bop_redwood_fence_gate>, <etfuturum:bop_redwood_door>, <etfuturum:bop_redwood_sign>, <etfuturum:bop_redwood_button>, <etfuturum:bop_redwood_boat>, <etfuturum:bop_redwood_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:11>, <BiblioWoodsBoP:BiblioWoodPaintingT1:11>, <BiblioWoodsBoP:BiblioWoodPaintingT2:11>, <BiblioWoodsBoP:BiblioWoodPaintingT3:11>, <BiblioWoodsBoP:BiblioWoodPaintingT4:11>, <BiblioWoodsBoP:BiblioWoodPaintingT0:11>, <BiblioWoodsBoP:BiblioWoodFancySign:11>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:11>, <BiblioWoodsBoP:BiblioWoodBookcase:11>, <BiblioWoodsBoP:BiblioWoodpotshelf:11>, <BiblioWoodsBoP:BiblioWoodshelf:11>, <BiblioWoodsBoP:BiblioWoodrack:11>, <BiblioWoodsBoP:BiblioWoodcase:11>, <BiblioWoodsBoP:BiblioWoodlabel:11>, <BiblioWoodsBoP:BiblioWooddesk:11>, <BiblioWoodsBoP:BiblioWoodtable:11>, <BiblioWoodsBoP:BiblioWoodMapFrame:11>, <BiblioWoodsBoP:BiblioWoodSeat:11>, <BiblioWoodsBoP:seatBack1:11>, <BiblioWoodsBoP:seatBack2:11>, <BiblioWoodsBoP:seatBack3:11>, <BiblioWoodsBoP:seatBack4:11>, <BiblioWoodsBoP:seatBack5:11>], [<StorageDrawersBop:fullDrawers1:8>, <StorageDrawersBop:fullDrawers2:8>, <StorageDrawersBop:fullDrawers4:8>, <StorageDrawersBop:halfDrawers2:8>, <StorageDrawersBop:halfDrawers4:8>, <StorageDrawersBop:trim:8>], [<GardenTrees:bop_thin_log:8>, <GardenTrees:bop_thin_log_fence:8>]);
cut(2, 'biomesoplenty', 'willow_planks', [<BiomesOPlenty:logs3:1>, <BiomesOPlenty:planks:9>, <BiomesOPlenty:woodenSingleSlab2:1>, <TConstruct:willow_lumber>, <etfuturum:bop_willow_pressure_plate>, <etfuturum:bop_wood_fence:9>, <etfuturum:bop_willow_trapdoor>, <etfuturum:bop_willow_fence_gate>, <etfuturum:bop_willow_door>, <etfuturum:bop_willow_sign>, <etfuturum:bop_willow_button>, <etfuturum:bop_willow_boat>, <etfuturum:bop_willow_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:12>, <BiblioWoodsBoP:BiblioWoodPaintingT1:12>, <BiblioWoodsBoP:BiblioWoodPaintingT2:12>, <BiblioWoodsBoP:BiblioWoodPaintingT3:12>, <BiblioWoodsBoP:BiblioWoodPaintingT4:12>, <BiblioWoodsBoP:BiblioWoodPaintingT0:12>, <BiblioWoodsBoP:BiblioWoodFancySign:12>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:12>, <BiblioWoodsBoP:BiblioWoodBookcase:12>, <BiblioWoodsBoP:BiblioWoodpotshelf:12>, <BiblioWoodsBoP:BiblioWoodshelf:12>, <BiblioWoodsBoP:BiblioWoodrack:12>, <BiblioWoodsBoP:BiblioWoodcase:12>, <BiblioWoodsBoP:BiblioWoodlabel:12>, <BiblioWoodsBoP:BiblioWooddesk:12>, <BiblioWoodsBoP:BiblioWoodtable:12>, <BiblioWoodsBoP:BiblioWoodMapFrame:12>, <BiblioWoodsBoP:BiblioWoodSeat:12>, <BiblioWoodsBoP:seatBack1:12>, <BiblioWoodsBoP:seatBack2:12>, <BiblioWoodsBoP:seatBack3:12>, <BiblioWoodsBoP:seatBack4:12>, <BiblioWoodsBoP:seatBack5:12>], [<StorageDrawersBop:fullDrawers1:9>, <StorageDrawersBop:fullDrawers2:9>, <StorageDrawersBop:fullDrawers4:9>, <StorageDrawersBop:halfDrawers2:9>, <StorageDrawersBop:halfDrawers4:9>, <StorageDrawersBop:trim:9>], [<GardenTrees:bop_thin_log:9>, <GardenTrees:bop_thin_log_fence:9>]);
cut(2, 'biomesoplenty', 'pine_planks', [<BiomesOPlenty:logs4>, <BiomesOPlenty:planks:11>, <BiomesOPlenty:woodenSingleSlab2:2>, <TConstruct:pine_lumber>, <etfuturum:bop_pine_pressure_plate>, <etfuturum:bop_wood_fence:11>, <etfuturum:bop_pine_trapdoor>, <etfuturum:bop_pine_fence_gate>, <etfuturum:bop_pine_door>, <etfuturum:bop_pine_sign>, <etfuturum:bop_pine_button>, <etfuturum:bop_pine_boat>, <etfuturum:bop_pine_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:10>, <BiblioWoodsBoP:BiblioWoodPaintingT1:10>, <BiblioWoodsBoP:BiblioWoodPaintingT2:10>, <BiblioWoodsBoP:BiblioWoodPaintingT3:10>, <BiblioWoodsBoP:BiblioWoodPaintingT4:10>, <BiblioWoodsBoP:BiblioWoodPaintingT0:10>, <BiblioWoodsBoP:BiblioWoodFancySign:10>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:10>, <BiblioWoodsBoP:BiblioWoodBookcase:10>, <BiblioWoodsBoP:BiblioWoodpotshelf:10>, <BiblioWoodsBoP:BiblioWoodshelf:10>, <BiblioWoodsBoP:BiblioWoodrack:10>, <BiblioWoodsBoP:BiblioWoodcase:10>, <BiblioWoodsBoP:BiblioWoodlabel:10>, <BiblioWoodsBoP:BiblioWooddesk:10>, <BiblioWoodsBoP:BiblioWoodtable:10>, <BiblioWoodsBoP:BiblioWoodMapFrame:10>, <BiblioWoodsBoP:BiblioWoodSeat:10>, <BiblioWoodsBoP:seatBack1:10>, <BiblioWoodsBoP:seatBack2:10>, <BiblioWoodsBoP:seatBack3:10>, <BiblioWoodsBoP:seatBack4:10>, <BiblioWoodsBoP:seatBack5:10>], [<StorageDrawersBop:fullDrawers1:11>, <StorageDrawersBop:fullDrawers2:11>, <StorageDrawersBop:fullDrawers4:11>, <StorageDrawersBop:halfDrawers2:11>, <StorageDrawersBop:halfDrawers4:11>, <StorageDrawersBop:trim:11>], [<GardenTrees:bop_thin_log:10>, <GardenTrees:bop_thin_log_fence:10>]);
cut(2, 'biomesoplenty', 'hellbark_planks', [<BiomesOPlenty:logs4:1>, <BiomesOPlenty:planks:12>, <BiomesOPlenty:woodenSingleSlab2:3>, <TConstruct:hellbark_lumber>, <etfuturum:bop_hellbark_pressure_plate>, <etfuturum:bop_wood_fence:12>, <etfuturum:bop_hellbark_trapdoor>, <etfuturum:bop_hellbark_fence_gate>, <etfuturum:bop_hellbark_door>, <etfuturum:bop_hellbark_sign>, <etfuturum:bop_hellbark_button>, <etfuturum:bop_hellbark_boat>, <etfuturum:bop_hellbark_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:4>, <BiblioWoodsBoP:BiblioWoodPaintingT1:4>, <BiblioWoodsBoP:BiblioWoodPaintingT2:4>, <BiblioWoodsBoP:BiblioWoodPaintingT3:4>, <BiblioWoodsBoP:BiblioWoodPaintingT4:4>, <BiblioWoodsBoP:BiblioWoodPaintingT0:4>, <BiblioWoodsBoP:BiblioWoodFancySign:4>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:4>, <BiblioWoodsBoP:BiblioWoodBookcase:4>, <BiblioWoodsBoP:BiblioWoodpotshelf:4>, <BiblioWoodsBoP:BiblioWoodshelf:4>, <BiblioWoodsBoP:BiblioWoodrack:4>, <BiblioWoodsBoP:BiblioWoodcase:4>, <BiblioWoodsBoP:BiblioWoodlabel:4>, <BiblioWoodsBoP:BiblioWooddesk:4>, <BiblioWoodsBoP:BiblioWoodtable:4>, <BiblioWoodsBoP:BiblioWoodMapFrame:4>, <BiblioWoodsBoP:BiblioWoodSeat:4>, <BiblioWoodsBoP:seatBack1:4>, <BiblioWoodsBoP:seatBack2:4>, <BiblioWoodsBoP:seatBack3:4>, <BiblioWoodsBoP:seatBack4:4>, <BiblioWoodsBoP:seatBack5:4>], [<StorageDrawersBop:fullDrawers1:12>, <StorageDrawersBop:fullDrawers2:12>, <StorageDrawersBop:fullDrawers4:12>, <StorageDrawersBop:halfDrawers2:12>, <StorageDrawersBop:halfDrawers4:12>, <StorageDrawersBop:trim:12>], [<GardenTrees:bop_thin_log:11>, <GardenTrees:bop_thin_log_fence:11>]);
cut(2, 'biomesoplenty', 'jacaranda_planks', [<BiomesOPlenty:logs4:2>, <BiomesOPlenty:planks:13>, <BiomesOPlenty:woodenSingleSlab2:4>, <TConstruct:jacaranda_lumber>, <etfuturum:bop_jacaranda_pressure_plate>, <etfuturum:bop_wood_fence:13>, <etfuturum:bop_jacaranda_trapdoor>, <etfuturum:bop_jacaranda_fence_gate>, <etfuturum:bop_jacaranda_door>, <etfuturum:bop_jacaranda_sign>, <etfuturum:bop_jacaranda_button>, <etfuturum:bop_jacaranda_boat>, <etfuturum:bop_jacaranda_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:6>, <BiblioWoodsBoP:BiblioWoodPaintingT1:6>, <BiblioWoodsBoP:BiblioWoodPaintingT2:6>, <BiblioWoodsBoP:BiblioWoodPaintingT3:6>, <BiblioWoodsBoP:BiblioWoodPaintingT4:6>, <BiblioWoodsBoP:BiblioWoodPaintingT0:6>, <BiblioWoodsBoP:BiblioWoodFancySign:6>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:6>, <BiblioWoodsBoP:BiblioWoodBookcase:6>, <BiblioWoodsBoP:BiblioWoodpotshelf:6>, <BiblioWoodsBoP:BiblioWoodshelf:6>, <BiblioWoodsBoP:BiblioWoodrack:6>, <BiblioWoodsBoP:BiblioWoodcase:6>, <BiblioWoodsBoP:BiblioWoodlabel:6>, <BiblioWoodsBoP:BiblioWooddesk:6>, <BiblioWoodsBoP:BiblioWoodtable:6>, <BiblioWoodsBoP:BiblioWoodMapFrame:6>, <BiblioWoodsBoP:BiblioWoodSeat:6>, <BiblioWoodsBoP:seatBack1:6>, <BiblioWoodsBoP:seatBack2:6>, <BiblioWoodsBoP:seatBack3:6>, <BiblioWoodsBoP:seatBack4:6>, <BiblioWoodsBoP:seatBack5:6>], [<StorageDrawersBop:fullDrawers1:13>, <StorageDrawersBop:fullDrawers2:13>, <StorageDrawersBop:fullDrawers4:13>, <StorageDrawersBop:halfDrawers2:13>, <StorageDrawersBop:halfDrawers4:13>, <StorageDrawersBop:trim:13>], [<GardenTrees:bop_thin_log:12>, <GardenTrees:bop_thin_log_fence:12>]);
cut(2, 'biomesoplenty', 'mahogany_planks', [<BiomesOPlenty:logs4:3>, <BiomesOPlenty:planks:14>, <BiomesOPlenty:woodenSingleSlab2:5>, <TConstruct:mahogany_lumber>, <etfuturum:bop_mahogany_pressure_plate>, <etfuturum:bop_wood_fence:14>, <etfuturum:bop_mahogany_trapdoor>, <etfuturum:bop_mahogany_fence_gate>, <etfuturum:bop_mahogany_door>, <etfuturum:bop_mahogany_sign>, <etfuturum:bop_mahogany_button>, <etfuturum:bop_mahogany_boat>, <etfuturum:bop_mahogany_chest_boat>], [null, <BiblioWoodsBoP:BiblioWoodClock:13>, <BiblioWoodsBoP:BiblioWoodPaintingT1:13>, <BiblioWoodsBoP:BiblioWoodPaintingT2:13>, <BiblioWoodsBoP:BiblioWoodPaintingT3:13>, <BiblioWoodsBoP:BiblioWoodPaintingT4:13>, <BiblioWoodsBoP:BiblioWoodPaintingT0:13>, <BiblioWoodsBoP:BiblioWoodFancySign:13>, <BiblioWoodsBoP:BiblioWoodFancyWorkbench:13>, <BiblioWoodsBoP:BiblioWoodBookcase:13>, <BiblioWoodsBoP:BiblioWoodpotshelf:13>, <BiblioWoodsBoP:BiblioWoodshelf:13>, <BiblioWoodsBoP:BiblioWoodrack:13>, <BiblioWoodsBoP:BiblioWoodcase:13>, <BiblioWoodsBoP:BiblioWoodlabel:13>, <BiblioWoodsBoP:BiblioWooddesk:13>, <BiblioWoodsBoP:BiblioWoodtable:13>, <BiblioWoodsBoP:BiblioWoodMapFrame:13>, <BiblioWoodsBoP:BiblioWoodSeat:13>, <BiblioWoodsBoP:seatBack1:13>, <BiblioWoodsBoP:seatBack2:13>, <BiblioWoodsBoP:seatBack3:13>, <BiblioWoodsBoP:seatBack4:13>, <BiblioWoodsBoP:seatBack5:13>], [<StorageDrawersBop:fullDrawers1:14>, <StorageDrawersBop:fullDrawers2:14>, <StorageDrawersBop:fullDrawers4:14>, <StorageDrawersBop:halfDrawers2:14>, <StorageDrawersBop:halfDrawers4:14>, <StorageDrawersBop:trim:14>], [<GardenTrees:bop_thin_log:13>, <GardenTrees:bop_thin_log_fence:13>]);