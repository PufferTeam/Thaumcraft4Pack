import mods.bloodmagic.Altar;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Research;

var arcaneBlock = <Thaumcraft:blockCosmeticSolid:6>;
var arcaneSlab = <Thaumcraft:blockCosmeticSlabStone>;
var arcaneWood = <customitems:arcane_wood_block>;
var blankSlate = <AWWayofTime:blankSlate>;
var bloodAltar = <AWWayofTime:Altar>;
var alchemicalFurnace = <Thaumcraft:blockStoneDevice>;
var lead = <ThermalFoundation:material:67>;
var tin = <ThermalFoundation:material:65>;
var manaDiamond = <Botania:manaResource:2>;
var sacrificialKnife = <AWWayofTime:sacrificialKnife>.withTag({sacrifice: 0 as byte});

//Research Tab
Research.addTab("BLOODMAGIC", "thaumcraft", "textures/misc/bloodmagic_tab.png");
game.setLocalization("en_US", "tc.research_category.BLOODMAGIC", "Blood Magic");

//Blood Magic Start
Research.addResearch("BLOODMAGIC_START", "BLOODMAGIC", "ira 3, mortuus 3, exanimus 3", 0, -2 as int, 2, sacrificialKnife);
Research.setRound("BLOODMAGIC_START", true);
Research.setAutoUnlock("BLOODMAGIC_START", true);
Research.addPage("BLOODMAGIC_START", "tc.research_page.BLOODMAGIC_START.1");
game.setLocalization("en_US", "tc.research_name.BLOODMAGIC_START", "Self Harm");
game.setLocalization("en_US", "tc.research_text.BLOODMAGIC_START", "It may hurt a bit, close your eyes");
game.setLocalization("en_US", "tc.research_page.BLOODMAGIC_START.1", "You've always heard that self harm is never a good thing, but what if is? Of course, we're talking about educational self harm here, as the purpose is to extract the substance that flows through your veins: Blood. You have had strange vision in which demons have told you the magical properties of blood that is called Life Essence. These visions got you wondering if you could start to exploit these properties and see Blood Magic really is about. <LINE> By right clicking this knife you will extract a bit of your own blood, for a purpose you have yet to discover.");
Research.addCraftingPage("BLOODMAGIC_START", sacrificialKnife);

//Blood Altar
Research.addResearch("BLOODALTAR", "BLOODMAGIC", "ira 3, mortuus 3, exanimus 3", 0, 0, 2, bloodAltar);
Research.setConcealed("BLOODALTAR", true);
Research.addPage("BLOODALTAR", "tc.research_page.BLOODALTAR.1");
game.setLocalization("en_US", "tc.research_name.BLOODALTAR", "Blood Altar");
game.setLocalization("en_US", "tc.research_text.BLOODALTAR", "Bloody infusion.");
game.setLocalization("en_US", "tc.research_page.BLOODALTAR.1", "You have made a device that has the ability to access the magical properties of Life Essence and infuse it to items. This magical essence that is flowing through every living being is finally going to open new paths to you. <LINE> The Altar can be placed on the ground and can be filled with blood by using your Sacrificial Knife near it, which will fill the Altar with the blood you extracted with it. Once you have enough Life Essence in the Altar, right click with item you want to infuse and it will be slowly infused in the altar.");

recipes.remove(bloodAltar);
Arcane.addShaped("BLOODALTAR", bloodAltar, "ignis 10, perditio 10", 
	[[arcaneBlock, tin, arcaneBlock],
	[arcaneBlock, alchemicalFurnace, arcaneBlock],
	[lead, manaDiamond, lead]]
);
Research.addArcanePage("BLOODALTAR", bloodAltar);

Research.addPage("BLOODALTAR", "tc.research_page.BLOODALTAR.2");
game.setLocalization("en_US", "tc.research_page.BLOODALTAR.2", "While it is operating, the Altar emits red particles (if particles effect option is on). If there is not enough essence in the buffer, the particles turn greyish and the item starts losing progress slowly. Adding essence to the Altar will resume the transmutation. When the process is complete, a puff of red particles is emitted. <LINE> A player near a Blood Altar while under the effects of Regeneration will suffer hunger at an accelerated rate. ");

Research.addPrereq("BLOODALTAR", "BLOODMAGIC_START", false);

Altar.removeRecipe(blankSlate);
Altar.addRecipe(blankSlate, arcaneBlock, 1, 1000, 5, 5);