import mods.thaumcraft.Arcane;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Research;

Research.addResearch("PURENICKEL", "ALCHEMY", "metallum 3, ordo 3", -3 as int, 3, 8, <WitchingGadgets:item.WG_Cluster:3>);
Research.setConcealed("PURENICKEL", true);
Research.setSecondary("PURENICKEL", true);
Research.addPage("PURENICKEL", "tc.research_page.PURENICKEL.1");
Research.addCruciblePage("PURENICKEL", <WitchingGadgets:item.WG_Cluster:3>);
Research.addPrereq("PURENICKEL", "PUREIRON", false);
game.setLocalization("en_US", "tc.research_name.PURENICKEL", "Nickel Purification");
game.setLocalization("en_US", "tc.research_text.PURENICKEL", "Purification of nickel into native clusters");
game.setLocalization("en_US", "tc.research_page.PURENICKEL.1", "Native clusters are rare concentrations of metals in its purest form. You have discovered a way to purify and concentrate raw nickel ore into a native nickel cluster.<BR>When smelted these clusters produces twice the normal amount of nickel ingots.");

Research.orphanResearch("METALLURGICPERFECTION_CLUSTERS");
Research.removeResearch("METALLURGICPERFECTION_CLUSTERS");

Research.moveResearch("PURESILVER", "ALCHEMY", -3 as int, 7);
Research.moveResearch("PURELEAD", "ALCHEMY", -2 as int, 7);
Research.moveResearch("PURETIN", "ALCHEMY", -4 as int, 6);
Research.moveResearch("PUREGOLD", "ALCHEMY", -4 as int, 4);

Research.orphanResearch("GADOMANCY.STICKYJAR");
Research.moveResearch("GADOMANCY.STICKYJAR", "ALCHEMY", 6, -3 as int);
Research.clearPrereqs("GADOMANCY.STICKYJAR");
Research.addPrereq("GADOMANCY.STICKYJAR", "JARLABEL", false);

Research.orphanResearch("GADOMANCY.REMOTEJAR");
Research.moveResearch("GADOMANCY.REMOTEJAR", "ALCHEMY", 8, -4 as int);
Research.clearPrereqs("GADOMANCY.REMOTEJAR");
Research.addPrereq("GADOMANCY.REMOTEJAR", "MIRRORESSENTIA", false);
Research.addPrereq("GADOMANCY.REMOTEJAR", "GADOMANCY.STICKYJAR", false);

Research.orphanResearch("GADOMANCY.GOLEMSILVERWOOD");
Research.moveResearch("GADOMANCY.GOLEMSILVERWOOD", "GOLEMANCY", 6, 6);
Research.clearPrereqs("GADOMANCY.GOLEMSILVERWOOD");
Research.addPrereq("GADOMANCY.GOLEMSILVERWOOD", "GOLEMTALLOW", false);
Research.addPrereq("GADOMANCY.GOLEMSILVERWOOD", "INFUSION", false);

Research.moveResearch("COREFISHING", "GOLEMANCY", 0, 6);

Research.orphanResearch("GADOMANCY.GOLEMCOREBODYGUARD");
Research.moveResearch("GADOMANCY.GOLEMCOREBODYGUARD", "GOLEMANCY", -5 as int, 7);
Research.clearPrereqs("GADOMANCY.GOLEMCOREBODYGUARD");
Research.addPrereq("GADOMANCY.GOLEMCOREBODYGUARD", "COREGUARD", false);
Research.addPrereq("GADOMANCY.GOLEMCOREBODYGUARD", "BOOTSTRAVELLER", false);
Research.addPrereq("GADOMANCY.GOLEMCOREBODYGUARD", "ELEMENTALSWORD", false);

Research.orphanResearch("GADOMANCY.GOLEMCOREBREAK");
Research.moveResearch("GADOMANCY.GOLEMCOREBREAK", "GOLEMANCY", -2 as int, 9);
Research.clearPrereqs("GADOMANCY.GOLEMCOREBREAK");
Research.addPrereq("GADOMANCY.GOLEMCOREBREAK", "CORELUMBER", false);
Research.addPrereq("GADOMANCY.GOLEMCOREBREAK", "ELEMENTALSHOVEL", false);
Research.addPrereq("GADOMANCY.GOLEMCOREBREAK", "ELEMENTALSWORD", false);
Research.addPrereq("GADOMANCY.GOLEMCOREBREAK", "ELEMENTALPICK", false);

Research.orphanResearch("GADOMANCY.ARCANEDROPPER");
Research.moveResearch("GADOMANCY.ARCANEDROPPER", "ARTIFICE", -6 as int, -4 as int);
Research.clearPrereqs("GADOMANCY.ARCANEDROPPER");
Research.addPrereq("GADOMANCY.ARCANEDROPPER", "BELLOWS", false);
Research.addPrereq("GADOMANCY.ARCANEDROPPER", "DISTILESSENTIA", false);

Research.moveResearch("WARDEDARCANA", "ARTIFICE", -2 as int, -1 as int);
Research.moveResearch("LEVITATOR", "ARTIFICE", -5 as int, 1);

Research.orphanResearch("XP_TALISMAN");
Research.moveResearch("XP_TALISMAN", "ARTIFICE", -5 as int, 1);

Research.orphanResearch("INFERNALBLASTFURNACE");
Research.moveResearch("INFERNALBLASTFURNACE", "ARTIFICE", -4 as int, -3 as int);
Research.clearPrereqs("INFERNALBLASTFURNACE");
Research.addPrereq("INFERNALBLASTFURNACE", "INFERNALFURNACE", false);

Research.orphanResearch("MIRRORPUMP");
Research.moveResearch("MIRRORPUMP", "ARTIFICE", 1, 11);
Research.clearPrereqs("MIRRORPUMP");
Research.addPrereq("MIRRORPUMP", "MIRRORESSENTIA", false);

Research.moveResearch("ALCHEMYBOILER", "ALCHEMY", 4, 1);
Research.clearPrereqs("ALCHEMYBOILER");
Research.addPrereq("ALCHEMYBOILER", "DISTILESSENTIA", false);

Research.orphanResearch("FLOATCANDLE");
Research.moveResearch("FLOATCANDLE", "ALCHEMY", -2 as int, 1);
Research.clearPrereqs("FLOATCANDLE");
Research.addPrereq("FLOATCANDLE", "TALLOW", false);

Research.orphanResearch("SAUNASTOVE");
Research.moveResearch("SAUNASTOVE", "ALCHEMY", -8 as int, -5 as int);
Research.clearPrereqs("SAUNASTOVE");
Research.addPrereq("SAUNASTOVE", "ARCANESPA", false);
Research.addPrereq("SAUNASTOVE", "INFUSION", false);

//Research.moveResearch("GADOMANCY.BLOCK_PROTECTOR", "ALCHEMY", 6, 2);
//Research.addPrereq("GADOMANCY.BLOCK_PROTECTOR", "ARCANESPA", false);

Research.moveResearch("CENTRIFUGE", "ALCHEMY", 10, 3);
Research.moveResearch("THAUMATORIUM", "ALCHEMY", 10, 5);

Research.moveResearch("SANESOAP", "ALCHEMY", -4 as int, -6 as int);
Research.moveResearch("ETHEREALBLOOM", "ALCHEMY", -7 as int, -3 as int);
Research.clearPrereqs("ETHEREALBLOOM");
Research.addPrereq("ETHEREALBLOOM", "BATHSALTS", false);

Research.moveResearch("PHIAL", "ALCHEMY", 0, 1 as int);
Research.addPrereq("PHIAL", "CRUCIBLE", false);

Research.orphanResearch("LABELLIB");
Research.moveResearch("LABELLIB", "ALCHEMY", 3, -5 as int);
Research.clearPrereqs("LABELLIB");
Research.addPrereq("LABELLIB", "JARLABEL", false);

Research.orphanResearch("INTERFACE");
Research.moveResearch("INTERFACE", "ALCHEMY", 8, 3);
Research.clearPrereqs("INTERFACE");
Research.addPrereq("INTERFACE", "CENTRIFUGE", false);

Research.orphanResearch("TRASHJAR");
Research.moveResearch("TRASHJAR", "ALCHEMY", 7, -6 as int);
Research.clearPrereqs("TRASHJAR");
Research.addPrereq("TRASHJAR", "JARVOID", false);
Research.addPrereq("TRASHJAR", "INFUSION", false);

Research.moveResearch("SHARE_TOME", "BASICS", 2, -4 as int);
Research.addPrereq("SHARE_TOME", "THAUMONOMICON", false);
Research.addPrereq("SHARE_TOME", "KNOWFRAG", false);

//PREVENT CRASH BY MOVING RANDOM PLACE
Research.moveResearch("PAVETRAVEL", "ARTIFICE", 5, -4 as int);
//-----------
Research.moveResearch("PAVEWARD", "ARTIFICE", 4, -4 as int);
Research.moveResearch("PAVETRAVEL", "ARTIFICE", 6, -4 as int);

Research.orphanResearch("AGEINGSTONE");
Research.moveResearch("AGEINGSTONE", "ARTIFICE", 3, -3 as int);
Research.clearPrereqs("AGEINGSTONE");
Research.addPrereq("AGEINGSTONE", "PAVEWARD", false);

Research.orphanResearch("ETHEREALWALL");
Research.moveResearch("ETHEREALWALL", "ARTIFICE", 3, -5 as int);
Research.clearPrereqs("ETHEREALWALL");
Research.addPrereq("ETHEREALWALL", "PAVEWARD", false);

Research.moveResearch("VISREADER", "AUTOMAGY", 2, -1 as int);

Research.orphanResearch("THINKTANK");
Research.moveResearch("THINKTANK", "AUTOMAGY", 4, -1 as int);
Research.clearPrereqs("THINKTANK");
Research.addPrereq("THINKTANK", "CRYSTALBRAIN", false);

Research.clearPrereqs("GADOMANCY.BLOCK_PROTECTOR");
Research.addPrereq("GADOMANCY.BLOCK_PROTECTOR", "TUBES", false);

Research.clearPrereqs("GADOMANCY.NODE_MANIPULATOR");
Research.addPrereq("GADOMANCY.NODE_MANIPULATOR", "VOIDMETAL", false);
Research.addPrereq("GADOMANCY.NODE_MANIPULATOR", "WANDPED", false);
Research.addPrereq("GADOMANCY.NODE_MANIPULATOR", "FOCUSWARDING", false);
Research.addPrereq("GADOMANCY.NODE_MANIPULATOR", "PAVEWARD", false);

Research.clearPrereqs("GADOMANCY.INFUSIONCLAW");
Research.addPrereq("GADOMANCY.INFUSIONCLAW", "VOIDMETAL", false);
Research.addPrereq("GADOMANCY.INFUSIONCLAW", "WANDPED", false);
Research.addPrereq("GADOMANCY.INFUSIONCLAW", "COREUSE", false);
Research.addPrereq("GADOMANCY.INFUSIONCLAW", "FOCUSPRIMAL", true);

Research.clearPrereqs("GADOMANCY.E_PORTAL_CREATOR");
Research.addPrereq("GADOMANCY.E_PORTAL_CREATOR", "OCULUS", false);
Research.addPrereq("GADOMANCY.E_PORTAL_CREATOR", "GADOMANCY.NODE_MANIPULATOR", true);

Research.moveResearch("ALCHGRATE", "ELDRITCH", -4 as int, 6);

//PREVENT CRASH BY MOVING RANDOM PLACE
Research.moveResearch("ROD_bone", "THAUMATURGY", -5 as int, 9);
Research.moveResearch("ROD_bone_staff", "THAUMATURGY", -5 as int, 10);
//-----------

Research.moveResearch("ROD_quartz", "THAUMATURGY", -3 as int, 0);
Research.moveResearch("ROD_quartz_staff", "THAUMATURGY", -2 as int, -1 as int);

Research.moveResearch("ROD_bone", "THAUMATURGY", -5 as int, 5);
Research.moveResearch("ROD_bone_staff", "THAUMATURGY", -5 as int, 6);

Research.moveResearch("ROD_silverwood", "THAUMATURGY", -3 as int, 4);
Research.moveResearch("ROD_silverwood_staff", "THAUMATURGY", -2 as int, 5);
Research.moveResearch("SCEPTRE", "THAUMATURGY", -1 as int, 4);
Research.moveResearch("ROD_greatwood_staff", "THAUMATURGY", -3 as int, 6);

Research.moveResearch("ROD_NECROMANCER_staff", "THAUMATURGY", -4 as int, 8);
Research.clearPrereqs("ROD_NECROMANCER_staff");
Research.addPrereq("ROD_NECROMANCER_staff", "ROD_greatwood_staff", false);
Research.addPrereq("ROD_NECROMANCER_staff", "ROD_bone_staff", false);
Research.addPrereq("ROD_NECROMANCER_staff", "INFUSION", false);

Research.moveResearch("ROD_AMBER", "THAUMATURGY", -2 as int, 2);
Research.clearPrereqs("ROD_AMBER");
Research.addPrereq("ROD_AMBER", "ROD_greatwood", false);
Research.addPrereq("ROD_AMBER", "INFUSION", false);

Research.moveResearch("ROD_AMBER_staff", "THAUMATURGY", -1 as int, 2);
Research.clearPrereqs("ROD_AMBER_staff");
Research.addPrereq("ROD_AMBER_staff", "ROD_AMBER", false);
Research.addPrereq("ROD_AMBER_staff", "ROD_greatwood_staff", true);

Research.moveResearch("ROD_TRANSMUTATION", "THAUMATURGY", -2 as int, 8);
Research.clearPrereqs("ROD_TRANSMUTATION");
Research.addPrereq("ROD_TRANSMUTATION", "ROD_NECROMANCER_staff", false);
Research.addPrereq("ROD_TRANSMUTATION", "INFUSION", false);

Research.moveResearch("ROD_TRANSMUTATION_staff", "THAUMATURGY", -1 as int, 8);
Research.clearPrereqs("ROD_TRANSMUTATION_staff");
Research.addPrereq("ROD_TRANSMUTATION_staff", "ROD_TRANSMUTATION", false);
Research.addPrereq("ROD_TRANSMUTATION_staff", "ROD_greatwood_staff", true);

//ERROR?

//Research.orphanResearch("GADOMANCY.GOLEMRUNICSHIELD");
//Research.moveResearch("GADOMANCY.GOLEMRUNICSHIELD", "GOLEMANCY", 8, -4 as int);
//Research.addPrereq("GADOMANCY.GOLEMRUNICSHIELD", "ADVANCEDGOLEM", false);

Research.orphanResearch("CLOAKKAMA");
Research.removeResearch("CLOAKKAMA");

Research.orphanResearch("WG.BATHSALTS");
Research.removeResearch("WG.BATHSALTS");

Research.orphanResearch("WG.MIRRORESSENTIA");
Research.removeResearch("WG.MIRRORESSENTIA");

Research.orphanResearch("WG.JARLABEL");
Research.removeResearch("WG.JARLABEL");

Research.orphanResearch("WG.INFERNALFURNACE");
Research.removeResearch("WG.INFERNALFURNACE");

Research.orphanResearch("TXJARVOID");
Research.removeResearch("TXJARVOID");

Research.orphanResearch("TXROD_greatwood_staff");
Research.removeResearch("TXROD_greatwood_staff");

Research.orphanResearch("TXROD_greatwood");
Research.removeResearch("TXROD_greatwood");

Research.orphanResearch("alternateGolemBell");
Research.removeResearch("alternateGolemBell");

Research.orphanResearch("GADOMANCY.PSEUDO.BELLOWS");
Research.removeResearch("GADOMANCY.PSEUDO.BELLOWS");

Research.orphanResearch("GADOMANCY.PSEUDO.GOLEMTALLOW");
Research.removeResearch("GADOMANCY.PSEUDO.GOLEMTALLOW");

Research.orphanResearch("GADOMANCY.PSEUDO.JARLABEL");
Research.removeResearch("GADOMANCY.PSEUDO.JARLABEL");

Research.orphanResearch("GADOMANCY.PSEUDO.COREGUARD");
Research.removeResearch("GADOMANCY.PSEUDO.COREGUARD");

Research.orphanResearch("GADOMANCY.PSEUDO.COREHARVEST");
Research.removeResearch("GADOMANCY.PSEUDO.COREHARVEST");

Research.moveResearch("TRANSGOLD", "ALCHEMY", 2, 4);

Research.clearPages("TRANSGOLD");
Research.addPage("TRANSGOLD", "tc.research_page.TRANSGOLD.1");
Research.clearPages("TRANSIRON");
Research.addPage("TRANSIRON", "tc.research_page.TRANSIRON.1");

Research.orphanResearch("TRANSCOPPER");
Research.removeResearch("TRANSCOPPER");
Research.addResearch("TRANSCOPPER", "ALCHEMY", "metallum 3, permutatio 3", 2, 5, 8, <ThermalFoundation:material:96>);
Research.setConcealed("TRANSCOPPER", true);
Research.setSecondary("TRANSCOPPER", true);
Research.addPage("TRANSCOPPER", "tc.research_page.TRANSCOPPER.1");
Research.addPrereq("TRANSCOPPER", "TRANSIRON", false);
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemNugget:1>);

Research.orphanResearch("TRANSTIN");
Research.removeResearch("TRANSTIN");
Research.addResearch("TRANSTIN", "ALCHEMY", "metallum 3, permutatio 2, vitreus 1", 2, 6, 8, <ThermalFoundation:material:97>);
Research.setConcealed("TRANSTIN", true);
Research.setSecondary("TRANSTIN", true);
Research.addPage("TRANSTIN", "tc.research_page.TRANSTIN.1");
Research.addPrereq("TRANSTIN", "TRANSIRON", false);

Research.orphanResearch("TRANSSILVER");
Research.removeResearch("TRANSSILVER");
Research.addResearch("TRANSSILVER", "ALCHEMY", "metallum 3, permutatio 2, lucrum 1", 1, 7, 8, <ThermalFoundation:material:98>);
Research.setConcealed("TRANSSILVER", true);
Research.setSecondary("TRANSSILVER", true);
Research.addPage("TRANSSILVER", "tc.research_page.TRANSSILVER.1");
Research.addPrereq("TRANSSILVER", "TRANSIRON", false);

Research.orphanResearch("TRANSLEAD");
Research.removeResearch("TRANSLEAD");
Research.addResearch("TRANSLEAD", "ALCHEMY", "metallum 3, permutatio 2, ordo 1", 0, 7, 8, <ThermalFoundation:material:99>);
Research.setConcealed("TRANSLEAD", true);
Research.setSecondary("TRANSLEAD", true);
Research.addPage("TRANSLEAD", "tc.research_page.TRANSLEAD.1");
Research.addPrereq("TRANSLEAD", "TRANSIRON", false);

Research.addResearch("TRANSNICKEL", "ALCHEMY", "metallum 3, permutatio 2, ordo 1", 1, 3, 8, <ThermalFoundation:material:100>);
Research.setConcealed("TRANSNICKEL", true);
Research.setSecondary("TRANSNICKEL", true);
Research.addPage("TRANSNICKEL", "tc.research_page.TRANSNICKEL.1");
Research.addPrereq("TRANSNICKEL", "TRANSIRON", false);
game.setLocalization("en_US", "tc.research_name.TRANSNICKEL", "Nickel Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSNICKEL", "Transformation of metals into nickel");
game.setLocalization("en_US", "tc.research_page.TRANSNICKEL.1", "You have discovered a way to multiply nickel by steeping nickel nuggets in elements harvested from other metals.");


Research.addResearch("CRUSHIRON", "ALCHEMY", "metallum 3, perditio 1", -1 as int, 10, 8, <ThermalFoundation:material>);
Research.setConcealed("CRUSHIRON", true);
Research.addPage("CRUSHIRON", "tc.research_page.CRUSHIRON.1");
Research.addPrereq("CRUSHIRON", "PUREIRON", false);
Research.addPrereq("CRUSHIRON", "TRANSIRON", false);
game.setLocalization("en_US", "tc.research_name.CRUSHIRON", "Metal Pulverization");
game.setLocalization("en_US", "tc.research_text.CRUSHIRON", "Pulverization of metal into dust");
game.setLocalization("en_US", "tc.research_page.CRUSHIRON.1", "You have discovered a way to crush metal into its most basic form. This thin dust of smelted ores cannot be formed back into metal ingots, but it seems like it might be useful in the future as your knowledge of metallurgy progresses.<BR>Ore Dust seems to make the material easier to manipulate, which is something to note.");

Research.addResearch("CRUSHGOLD", "ALCHEMY", "metallum 3, perditio 2, ordo 1", -3 as int, 9, 8, <ThermalFoundation:material:1>);
Research.setConcealed("CRUSHGOLD", true);
Research.setSecondary("CRUSHGOLD", true);
Research.addPage("CRUSHGOLD", "tc.research_page.CRUSHGOLD.1");
Research.addPrereq("CRUSHGOLD", "CRUSHIRON", false);
game.setLocalization("en_US", "tc.research_name.CRUSHGOLD", "Gold Pulverization");
game.setLocalization("en_US", "tc.research_text.CRUSHGOLD", "Pulverization of gold into dust");
game.setLocalization("en_US", "tc.research_page.CRUSHGOLD.1", "You have discovered a way to crush gold into its most basic form. This thin dust of smelted gold cannot be formed back into gold ingots, but it seems like it might be useful in the future as your knowledge of metallurgy progresses.<BR>Gold Dust seems to make gold easier to manipulate, which is something to note.");

Research.addResearch("CRUSHCOPPER", "ALCHEMY", "metallum 3, perditio 2, ordo 1", -3 as int, 10, 8, <ThermalFoundation:material:32>);
Research.setConcealed("CRUSHCOPPER", true);
Research.setSecondary("CRUSHCOPPER", true);
Research.addPage("CRUSHCOPPER", "tc.research_page.CRUSHCOPPER.1");
Research.addPrereq("CRUSHCOPPER", "CRUSHIRON", false);
game.setLocalization("en_US", "tc.research_name.CRUSHCOPPER", "Copper Pulverization");
game.setLocalization("en_US", "tc.research_text.CRUSHCOPPER", "Pulverization of copper into dust");
game.setLocalization("en_US", "tc.research_page.CRUSHCOPPER.1", "You have discovered a way to crush copper into its most basic form. This thin dust of smelted copper cannot be formed back into copper ingots, but it seems like it might be useful in the future as your knowledge of metallurgy progresses.<BR>Copper Dust seems to make copper easier to manipulate, which is something to note.");

Research.addResearch("CRUSHTIN", "ALCHEMY", "metallum 3, perditio 2, ordo 1", -3 as int, 11, 8, <ThermalFoundation:material:33>);
Research.setConcealed("CRUSHTIN", true);
Research.setSecondary("CRUSHTIN", true);
Research.addPage("CRUSHTIN", "tc.research_page.CRUSHTIN.1");
Research.addPrereq("CRUSHTIN", "CRUSHIRON", false);
game.setLocalization("en_US", "tc.research_name.CRUSHTIN", "Tin Pulverization");
game.setLocalization("en_US", "tc.research_text.CRUSHTIN", "Pulverization of tin into dust");
game.setLocalization("en_US", "tc.research_page.CRUSHTIN.1", "You have discovered a way to crush tin into its most basic form. This thin dust of smelted tin cannot be formed back into tin ingots, but it seems like it might be useful in the future as your knowledge of metallurgy progresses.<BR>Tin Dust seems to make tin easier to manipulate, which is something to note.");

Research.addResearch("CRUSHSILVER", "ALCHEMY", "metallum 3, perditio 2, ordo 1", -2 as int, 12, 8, <ThermalFoundation:material:34>);
Research.setConcealed("CRUSHSILVER", true);
Research.setSecondary("CRUSHSILVER", true);
Research.addPage("CRUSHSILVER", "tc.research_page.CRUSHSILVER.1");
Research.addPrereq("CRUSHSILVER", "CRUSHIRON", false);
game.setLocalization("en_US", "tc.research_name.CRUSHSILVER", "Silver Pulverization");
game.setLocalization("en_US", "tc.research_text.CRUSHSILVER", "Pulverization of silver into dust");
game.setLocalization("en_US", "tc.research_page.CRUSHSILVER.1", "You have discovered a way to crush silver into its most basic form. This thin dust of smelted silver cannot be formed back into silver ingots, but it seems like it might be useful in the future as your knowledge of metallurgy progresses.<BR>Silver Dust seems to make silver easier to manipulate, which is something to note.");

Research.addResearch("CRUSHLEAD", "ALCHEMY", "metallum 3, perditio 2, ordo 1", -1 as int, 12, 8, <ThermalFoundation:material:35>);
Research.setConcealed("CRUSHLEAD", true);
Research.setSecondary("CRUSHLEAD", true);
Research.addPage("CRUSHLEAD", "tc.research_page.CRUSHLEAD.1");
Research.addPrereq("CRUSHLEAD", "CRUSHIRON", false);
game.setLocalization("en_US", "tc.research_name.CRUSHLEAD", "Lead Pulverization");
game.setLocalization("en_US", "tc.research_text.CRUSHLEAD", "Pulverization of lead into dust");
game.setLocalization("en_US", "tc.research_page.CRUSHLEAD.1", "You have discovered a way to crush lead into its most basic form. This thin dust of smelted lead cannot be formed back into lead ingots, but it seems like it might be useful in the future as your knowledge of metallurgy progresses.<BR>Lead Dust seems to make lead easier to manipulate, which is something to note.");

Research.addResearch("CRUSHNICKEL", "ALCHEMY", "metallum 3, perditio 2, ordo 1", -2 as int, 8, 8, <ThermalFoundation:material:36>);
Research.setConcealed("CRUSHNICKEL", true);
Research.setSecondary("CRUSHNICKEL", true);
Research.addPage("CRUSHNICKEL", "tc.research_page.CRUSHNICKEL.1");
Research.addPrereq("CRUSHNICKEL", "CRUSHIRON", false);
game.setLocalization("en_US", "tc.research_name.CRUSHNICKEL", "Nickel Pulverization");
game.setLocalization("en_US", "tc.research_text.CRUSHNICKEL", "Pulverization of nickel into dust");
game.setLocalization("en_US", "tc.research_page.CRUSHNICKEL.1", "You have discovered a way to crush nickel into its most basic form. This thin dust of smelted nickel cannot be formed back into nickel ingots, but it seems like it might be useful in the future as your knowledge of metallurgy progresses.<BR>Nickel Dust seems to make nickel easier to manipulate, which is something to note.");

Research.addResearch("ALLOYBASIC", "ALCHEMY", "metallum 3, perditio 1", 2, 10, 8, <ThermalFoundation:material:41>);
Research.setConcealed("ALLOYBASIC", true);
Research.addPage("ALLOYBASIC", "tc.research_page.ALLOYBASIC.1");
Research.addPrereq("ALLOYBASIC", "CRUSHIRON", false);
game.setLocalization("en_US", "tc.research_name.ALLOYBASIC", "Metal Alloying");
game.setLocalization("en_US", "tc.research_text.ALLOYBASIC", "Alloying of basic metals into complex blend");
game.setLocalization("en_US", "tc.research_page.ALLOYBASIC.1", "You have discovered a way to mix metal dusts into more complex versions of the base metals, you have tried multiple combinations and it seems like by mixing specific kind of metals together you can obtain more complex version of these same metal, which mean you can alloy metals by mixing their dusts.<BR>The first alloy you have discovered is Bronze, it seems to be pretty decent and sturdy for tools and seems to be a pretty good material. Made from copper and tin, it is easy to obtain.<BR>Maybe with more time you can find out other alloys.");
