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

Research.orphanResearch("FUNNEL");
Research.moveResearch("FUNNEL", "ALCHEMY", 10, -1 as int);
Research.clearPrereqs("FUNNEL");
Research.addPrereq("FUNNEL", "TUBEFILTER", false);

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

Research.orphanResearch("XP_TALISMAN");
Research.moveResearch("XP_TALISMAN", "ARTIFICE", -6 as int, 9);

Research.moveResearch("TD.DYEDFORTRESS", "ARTIFICE", -8 as int, 11);
Research.clearPrereqs("TD.DYEDFORTRESS");
Research.addPrereq("TD.DYEDFORTRESS", "ARMORFORTRESS", false);

Research.moveResearch("GADOMANCY.ARMORDISGUISE", "ARTIFICE", -7 as int, 13);
Research.clearPrereqs("GADOMANCY.ARMORDISGUISE");
Research.addPrereq("GADOMANCY.ARMORDISGUISE", "INFUSIONENCHANTMENT", false);

Research.moveResearch("GADOMANCY.REVEALER", "ARTIFICE", -9 as int, 15);
Research.clearPrereqs("GADOMANCY.REVEALER");
Research.addPrereq("GADOMANCY.REVEALER", "INFUSIONENCHANTMENT", false);

Research.moveResearch("TTENCH_ASCENT_BOOST", "ARTIFICE", -11 as int, 14);
Research.clearPrereqs("TTENCH_ASCENT_BOOST");
Research.addPrereq("TTENCH_ASCENT_BOOST", "GADOMANCY.REVEALER", false);

Research.moveResearch("TTENCH_POUNCE", "ARTIFICE", -13 as int, 13);
Research.clearPrereqs("TTENCH_POUNCE");
Research.addPrereq("TTENCH_POUNCE", "TTENCH_ASCENT_BOOST", false);

Research.moveResearch("TTENCH_SLOW_FALL", "ARTIFICE", -10 as int, 13);
Research.clearPrereqs("TTENCH_SLOW_FALL");
Research.addPrereq("TTENCH_SLOW_FALL", "GADOMANCY.REVEALER", false);

Research.moveResearch("TTENCH_SHOCKWAVE", "ARTIFICE", -12 as int, 12);
Research.clearPrereqs("TTENCH_SHOCKWAVE");
Research.addPrereq("TTENCH_SHOCKWAVE", "TTENCH_SLOW_FALL", false);

Research.moveResearch("TTENCH_VAMPIRISM", "ARTIFICE", -11 as int, 16);
Research.clearPrereqs("TTENCH_VAMPIRISM");
Research.addPrereq("TTENCH_VAMPIRISM", "GADOMANCY.REVEALER", false);

Research.moveResearch("TTENCH_VALIANCE", "ARTIFICE", -13 as int, 15);
Research.clearPrereqs("TTENCH_VALIANCE");
Research.addPrereq("TTENCH_VALIANCE", "TTENCH_VAMPIRISM", false);

Research.moveResearch("TTENCH_DISPERSED", "ARTIFICE", -13 as int, 17);
Research.clearPrereqs("TTENCH_DISPERSED");
Research.addPrereq("TTENCH_DISPERSED", "TTENCH_VAMPIRISM", false);

Research.moveResearch("TTENCH_FOCUSED", "ARTIFICE", -12 as int, 18);
Research.clearPrereqs("TTENCH_FOCUSED");
Research.addPrereq("TTENCH_FOCUSED", "TTENCH_VAMPIRISM", false);

Research.moveResearch("TTENCH_FINAL", "ARTIFICE", -14 as int, 19);
Research.clearPrereqs("TTENCH_FINAL");
Research.addPrereq("TTENCH_FINAL", "TTENCH_DISPERSED", false);
Research.addPrereq("TTENCH_FINAL", "TTENCH_FOCUSED", false);

Research.moveResearch("TTENCH_DESINTEGRATE", "ARTIFICE", -10 as int, 17);
Research.clearPrereqs("TTENCH_DESINTEGRATE");
Research.addPrereq("TTENCH_DESINTEGRATE", "GADOMANCY.REVEALER", false);

Research.moveResearch("TTENCH_SHATTER", "ARTIFICE", -11 as int, 19);
Research.clearPrereqs("TTENCH_SHATTER");
Research.addPrereq("TTENCH_SHATTER", "TTENCH_DESINTEGRATE", false);

Research.moveResearch("TTENCH_AUTO_SMELT", "ARTIFICE", -8 as int, 17);
Research.clearPrereqs("TTENCH_AUTO_SMELT");
Research.addPrereq("TTENCH_AUTO_SMELT", "GADOMANCY.REVEALER", false);

Research.moveResearch("TTENCH_TUNNEL", "ARTIFICE", -7 as int, 19);
Research.clearPrereqs("TTENCH_TUNNEL");
Research.addPrereq("TTENCH_TUNNEL", "TTENCH_AUTO_SMELT", false);

Research.moveResearch("TTENCH_QUICK_DRAW", "ARTIFICE", -7 as int, 16);
Research.clearPrereqs("TTENCH_QUICK_DRAW");
Research.addPrereq("TTENCH_QUICK_DRAW", "GADOMANCY.REVEALER", false);

Research.moveResearch("ENCHDISARM", "ARTIFICE", -6 as int, 18);
Research.clearPrereqs("ENCHDISARM");
Research.addPrereq("ENCHDISARM", "TTENCH_QUICK_DRAW", false);

Research.moveResearch("ENCHBINDING", "ARTIFICE", -5 as int, 17);
Research.clearPrereqs("ENCHBINDING");
Research.addPrereq("ENCHBINDING", "TTENCH_QUICK_DRAW", false);

Research.moveResearch("ENCH_RIDEPROTECT", "ARTIFICE", -11 as int, 11);
Research.setSecondary("ENCH_RIDEPROTECT", true);
Research.clearPrereqs("ENCH_RIDEPROTECT");
Research.addPrereq("ENCH_RIDEPROTECT", "TTENCH_SLOW_FALL", false);

Research.moveResearch("ENCHNIGHTVISION", "ARTIFICE", -9 as int, 19);
Research.clearPrereqs("ENCHNIGHTVISION");
Research.addPrereq("ENCHNIGHTVISION", "GADOMANCY.REVEALER", false);

Research.moveResearch("ENCH_STEALTH", "ARTIFICE", -8 as int, 20);
Research.setSecondary("ENCH_STEALTH", true);
Research.clearPrereqs("ENCH_STEALTH");
Research.addPrereq("ENCH_STEALTH", "ENCHNIGHTVISION", false);

Research.moveResearch("ENCH_BACKSTAB", "ARTIFICE", -10 as int, 20);
Research.setSecondary("ENCH_BACKSTAB", true);
Research.clearPrereqs("ENCH_BACKSTAB");
Research.addPrereq("ENCH_BACKSTAB", "ENCHNIGHTVISION", false);

Research.moveResearch("ENCH_UNVEILING", "ARTIFICE", -9 as int, 21);
Research.setSecondary("ENCH_UNVEILING", true);
Research.clearPrereqs("ENCH_UNVEILING");
Research.addPrereq("ENCH_UNVEILING", "ENCHNIGHTVISION", false);

Research.moveResearch("NITORLIGHT", "ARTIFICE", -5 as int, 1);
Research.addPrereq("ARCANELAMP", "NITORLIGHT", false);

Research.orphanResearch("INFERNALBLASTFURNACE");
Research.moveResearch("INFERNALBLASTFURNACE", "ARTIFICE", -4 as int, -3 as int);
Research.clearPrereqs("INFERNALBLASTFURNACE");
Research.addPrereq("INFERNALBLASTFURNACE", "INFERNALFURNACE", false);

Research.orphanResearch("MIRRORPUMP");
Research.moveResearch("MIRRORPUMP", "ARTIFICE", 1, 11);
Research.clearPrereqs("MIRRORPUMP");
Research.addPrereq("MIRRORPUMP", "MIRRORESSENTIA", false);

Research.orphanResearch("JARSEAL");
Research.removeResearch("JARSEAL");

Research.moveResearch("DISLOCATOR", "ARTIFICE", 3, 11);
Research.clearPrereqs("DISLOCATOR");
Research.addPrereq("DISLOCATOR", "MIRRORHAND", false);

Research.moveResearch("STABILIZERBELT", "ARTIFICE", 4, 7);
Research.clearPrereqs("STABILIZERBELT");
Research.addPrereq("STABILIZERBELT", "HOVERGIRDLE", false);

Research.moveResearch("ALCHEMYBOILER", "ALCHEMY", 4, 1);
Research.clearPrereqs("ALCHEMYBOILER");
Research.addPrereq("ALCHEMYBOILER", "DISTILESSENTIA", false);

Research.moveResearch("CRUCSOULS", "ALCHEMY", 4, 3);
Research.clearPrereqs("CRUCSOULS");
Research.addPrereq("CRUCSOULS", "ALCHEMYBOILER", false);
Research.addPrereq("CRUCSOULS", "INFUSION", false);
Research.addPrereq("CRUCSOULS", "FLESHCURE", true);

Research.orphanResearch("FLOATCANDLE");
Research.moveResearch("FLOATCANDLE", "ALCHEMY", -2 as int, 1);
Research.clearPrereqs("FLOATCANDLE");
Research.addPrereq("FLOATCANDLE", "TALLOW", false);

Research.orphanResearch("SAUNASTOVE");
Research.moveResearch("SAUNASTOVE", "ALCHEMY", -8 as int, -5 as int);
Research.clearPrereqs("SAUNASTOVE");
Research.addPrereq("SAUNASTOVE", "ARCANESPA", false);
Research.addPrereq("SAUNASTOVE", "INFUSION", false);

Research.moveResearch("GADOMANCY.BLOCK_PROTECTOR", "ALCHEMY", 6, 2);
Research.clearPrereqs("GADOMANCY.BLOCK_PROTECTOR");
Research.addPrereq("GADOMANCY.BLOCK_PROTECTOR", "TUBES", false);

Research.moveResearch("CENTRIFUGE", "ALCHEMY", 10, 3);
Research.moveResearch("THAUMATORIUM", "ALCHEMY", 10, 5);

Research.moveResearch("TERRAFORMER", "ALCHEMY", 6, 5);
Research.clearPrereqs("TERRAFORMER");
Research.addPrereq("TERRAFORMER", "CENTRIFUGE", false);
Research.addPrereq("TERRAFORMER", "INFUSION", false);

Research.moveResearch("SANESOAP", "ALCHEMY", -4 as int, -6 as int);
Research.moveResearch("ETHEREALBLOOM", "ALCHEMY", -7 as int, -3 as int);
Research.clearPrereqs("ETHEREALBLOOM");
Research.addPrereq("ETHEREALBLOOM", "BATHSALTS", false);

Research.moveResearch("ALCHEMICALTRANSMOGRIFY", "ALCHEMY", -7 as int, -1 as int);
Research.clearPrereqs("ALCHEMICALTRANSMOGRIFY");
Research.addPrereq("ALCHEMICALTRANSMOGRIFY", "ALCHEMICALMANUFACTURE", false);

Research.moveResearch("ROSEVINE", "ALCHEMY", -9 as int, -1 as int);
Research.clearPrereqs("ROSEVINE");
Research.addPrereq("ROSEVINE", "ALCHEMICALTRANSMOGRIFY", false);

Research.moveResearch("PHIAL", "ALCHEMY", 0, 1 as int);
Research.addPrereq("PHIAL", "CRUCIBLE", false);

Research.orphanResearch("LABELLIB");
Research.moveResearch("LABELLIB", "ALCHEMY", 3, -5 as int);
Research.clearPrereqs("LABELLIB");
Research.addPrereq("LABELLIB", "JARLABEL", false);

Research.orphanResearch("GASEOUS_LIGHT");
Research.moveResearch("GASEOUS_LIGHT", "ALCHEMY", 0, -2 as int);
Research.clearPrereqs("GASEOUS_LIGHT");
Research.addPrereq("GASEOUS_LIGHT", "NITOR", false);

Research.orphanResearch("GASEOUS_SHADOW");
Research.moveResearch("GASEOUS_SHADOW", "ALCHEMY", -1 as int, -4 as int);
Research.clearPrereqs("GASEOUS_SHADOW");
Research.addPrereq("GASEOUS_SHADOW", "GASEOUS_LIGHT", false);

Research.orphanResearch("GAS_REMOVER");
Research.moveResearch("GAS_REMOVER", "ALCHEMY", -1 as int, -5 as int);
Research.clearPrereqs("GAS_REMOVER");
Research.addPrereq("GAS_REMOVER", "GASEOUS_SHADOW", false);

Research.moveResearch("BRIGHT_NITOR", "ALCHEMY", 1, -4 as int);
Research.clearPrereqs("BRIGHT_NITOR");
Research.addPrereq("BRIGHT_NITOR", "GASEOUS_LIGHT", false);

Research.orphanResearch("FIRE_IGNIS");
Research.removeResearch("FIRE_IGNIS");

Research.orphanResearch("FIRE_AQUA");
Research.removeResearch("FIRE_AQUA");

Research.orphanResearch("FIRE_TERRA");
Research.removeResearch("FIRE_TERRA");

Research.orphanResearch("FIRE_ORDO");
Research.removeResearch("FIRE_ORDO");

Research.orphanResearch("FIRE_AER");
Research.removeResearch("FIRE_AER");

Research.orphanResearch("FIRE_PERDITIO");
Research.removeResearch("FIRE_PERDITIO");

Research.moveResearch("INFUSED_POTIONS", "ALCHEMY", 1, -6 as int);
Research.clearPrereqs("INFUSED_POTIONS");
Research.addPrereq("INFUSED_POTIONS", "BRIGHT_NITOR", false);
Research.addPrereq("INFUSED_POTIONS", "INFUSION", false);

Research.moveResearch("FLESHCURE", "ALCHEMY", -2 as int, -2 as int);
Research.clearPrereqs("FLESHCURE");
Research.addPrereq("FLESHCURE", "TALLOW", false);

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
Research.addPrereq("SHARE_TOME", "THAUMOMETER", false);

Research.moveResearch("KNOWFRAG", "BASICS", 7, -4 as int);
Research.clearPrereqs("KNOWFRAG");
Research.addPrereq("KNOWFRAG", "RESTABLE", false);

Research.moveResearch("TABLE", "BASICS", 6, 0);
Research.moveResearch("ARCTABLE", "BASICS", 5, -2 as int);
Research.moveResearch("RESTABLE", "BASICS", 7, -2 as int);

Research.moveResearch("THAUMOMETER", "BASICS", 3, -2 as int);
Research.addPrereq("THAUMOMETER", "RESEARCH", false);

//PREVENT CRASH BY MOVING RANDOM PLACE
Research.moveResearch("PAVETRAVEL", "ARTIFICE", 5, -4 as int);
//-----------
Research.moveResearch("PAVEWARD", "ARTIFICE", 4, -4 as int);
Research.moveResearch("PAVETRAVEL", "ARTIFICE", 6, -4 as int);

//Research.moveResearch("BANNERS", "ARTIFICE", 2, -1 as int);

Research.orphanResearch("AGEINGSTONE");
Research.moveResearch("AGEINGSTONE", "ARTIFICE", 3, -3 as int);
Research.clearPrereqs("AGEINGSTONE");
Research.addPrereq("AGEINGSTONE", "PAVEWARD", false);

Research.orphanResearch("ETHEREALWALL");
Research.moveResearch("ETHEREALWALL", "ARTIFICE", 2, -5 as int);
Research.clearPrereqs("ETHEREALWALL");
Research.addPrereq("ETHEREALWALL", "PAVEWARD", false);
Research.addPrereq("ETHEREALWALL", "PLATFORM", false);

Research.moveResearch("STONEEXTRUDER", "ARTIFICE", 7, -2 as int);
Research.clearPrereqs("STONEEXTRUDER");
Research.addPrereq("STONEEXTRUDER", "ARCANESTONE", false);
Research.addPrereq("STONEEXTRUDER", "INFUSION", true);

Research.moveResearch("ICESOLIDIFIER", "ARTIFICE", 8, -4 as int);
Research.clearPrereqs("ICESOLIDIFIER");
Research.addPrereq("ICESOLIDIFIER", "STONEEXTRUDER", false);

Research.moveResearch("URN", "ARTIFICE", 10, -4 as int);
Research.clearPrereqs("URN");
Research.addPrereq("URN", "ICESOLIDIFIER", false);

Research.moveResearch("BURN", "ARTIFICE", 9, -2 as int);

Research.moveResearch("SLIVERS", "ARTIFICE", 5, -7 as int);
Research.moveResearch("SLIVERS_WARDING", "ARTIFICE", 4, -5 as int);
Research.moveResearch("SLIVERS_TRAVEL", "ARTIFICE", 6, -5 as int);

Research.moveResearch("LEVITATOR", "ARTIFICE", 0, -1 as int);

Research.moveResearch("PLATFORM", "ARTIFICE", 0, -3 as int);
Research.clearPrereqs("PLATFORM");
Research.addPrereq("PLATFORM", "LEVITATOR", false);

Research.orphanResearch("LEVITATOR_LOCOMOTIVE");
Research.moveResearch("LEVITATOR_LOCOMOTIVE", "ARTIFICE", 0, -5 as int);
Research.clearPrereqs("LEVITATOR_LOCOMOTIVE");
Research.addPrereq("LEVITATOR_LOCOMOTIVE", "PLATFORM", false);
Research.addPrereq("LEVITATOR_LOCOMOTIVE", "INFUSION", true);

Research.moveResearch("DISCOUNTRINGS", "ARTIFICE", 2, 1);
Research.clearPrereqs("DISCOUNTRINGS");
Research.addPrereq("DISCOUNTRINGS", "BASICARTIFACE", false);

Research.moveResearch("REVEALING_HELM", "ARTIFICE", 4, 0);
Research.clearPrereqs("REVEALING_HELM");
Research.addPrereq("REVEALING_HELM", "GOGGLES", false);

Research.moveResearch("TD.RUNICARMOR", "ARTIFICE", 8, 4);
Research.clearPrereqs("TD.RUNICARMOR");
Research.addPrereq("TD.RUNICARMOR", "RUNICAUGMENTATION", false);
Research.addPrereq("TD.RUNICARMOR", "INFUSION", true);

Research.moveResearch("TD.RUNICARMORUPGRADES", "ARTIFICE", 9, 4);
Research.clearPrereqs("TD.RUNICARMORUPGRADES");
Research.addPrereq("TD.RUNICARMORUPGRADES", "TD.RUNICARMOR", false);

Research.moveResearch("TD.RUNICGOGGLES", "ARTIFICE", 8, 3);
Research.clearPrereqs("TD.RUNICGOGGLES");
Research.addPrereq("TD.RUNICGOGGLES", "TD.RUNICARMOR", false);

Research.moveResearch("TD.RUNICBOOTSTRAVELLER", "ARTIFICE", 8, 5);
Research.clearPrereqs("TD.RUNICBOOTSTRAVELLER");
Research.addPrereq("TD.RUNICBOOTSTRAVELLER", "TD.RUNICARMOR", false);

Research.moveResearch("REPAIRER", "ARTIFICE", -2 as int, 12);
Research.addPrereq("REPAIRER", "ARCANEBORE", false);

Research.orphanResearch("MAGNETS");
Research.moveResearch("MAGNETS", "ARTIFICE", -1 as int, 14);
Research.clearPrereqs("MAGNETS");
Research.addPrereq("MAGNETS", "FOCUS_TELEKINESIS", false);
Research.addPrereq("MAGNETS", "REPAIRER", false);

Research.moveResearch("REPLICATOR", "ARTIFICE", -3 as int, 14);
Research.clearPrereqs("REPLICATOR");
Research.addPrereq("REPLICATOR", "REPAIRER", false);

Research.moveResearch("BLOOD_SWORD", "ARTIFICE", -2 as int, 16);
Research.clearPrereqs("BLOOD_SWORD");
Research.addPrereq("BLOOD_SWORD", "ROD_NECROMANCER_staff", false);
//Research.addPrereq("BLOOD_SWORD", "REPAIRER", false);

Research.moveResearch("SUMMON", "ARTIFICE", -3 as int, 18);
Research.clearPrereqs("SUMMON");
//Research.addPrereq("SUMMON", "MAGNETS", false);
Research.addPrereq("SUMMON", "BLOOD_SWORD", false);

Research.moveResearch("ANIMATION_TABLET", "AUTOMAGY", 7, -7 as int);
Research.clearPrereqs("ANIMATION_TABLET");
Research.addPrereq("ANIMATION_TABLET", "COREUSE", false);
Research.addPrereq("ANIMATION_TABLET", "GOLEMINHIBITOR", false);

Research.moveResearch("VISREADER", "AUTOMAGY", 2, -1 as int);

Research.moveResearch("ESSENTIALOCUS", "AUTOMAGY", 3, -6 as int);

Research.moveResearch("ESSENTIALOCUS", "AUTOMAGY", 4, -2 as int);
Research.moveResearch("ESSENTIALOCUSAGGREGATOR", "AUTOMAGY", 2, -3 as int);

Research.moveResearch("GADOMANCY.AURA_CORE", "AUTOMAGY", 3, -5 as int);
Research.clearPrereqs("GADOMANCY.AURA_CORE");
Research.addPrereq("GADOMANCY.AURA_CORE", "INFUSION", false);
Research.addPrereq("GADOMANCY.AURA_CORE", "CRYSTALBRAIN", false);

Research.moveResearch("GADOMANCY.ARCANE_PACKAGER", "AUTOMAGY", 2, -8 as int);

Research.moveResearch("GADOMANCY.KNOWLEDGE_BOOK", "AUTOMAGY", 0, -4 as int);

Research.moveResearch("GADOMANCY.AURA_PYLON", "AUTOMAGY", 1, -6 as int);
Research.moveResearch("GADOMANCY.AURA_EFFECTS", "AUTOMAGY", 0, -7 as int);

Research.moveResearch("GADOMANCY.CLEAN_AURA_CORE", "AUTOMAGY", 4, -5 as int);

Research.moveResearch("BRAINCURE", "ARTIFICE", -4 as int, 11);
Research.clearPrereqs("BRAINCURE");
Research.addPrereq("BRAINCURE", "FLESHCURE", false);
Research.addPrereq("BRAINCURE", "JARBRAIN", false);

Research.moveResearch("THINKTANK", "ARTIFICE", -5 as int, 13);
Research.clearPrereqs("THINKTANK");
Research.addPrereq("THINKTANK", "BRAINCURE", false);

Research.moveResearch("GRATE", "AUTOMAGY", 0, -2 as int);
Research.addPrereq("GRATE", "REDSTONETHEORY", false);

Research.moveResearch("GADOMANCY.NODE_MANIPULATOR", "ELDRITCH", 1, -5 as int);
Research.clearPrereqs("GADOMANCY.NODE_MANIPULATOR");
Research.addPrereq("GADOMANCY.NODE_MANIPULATOR", "VOIDMETAL", false);
Research.addPrereq("GADOMANCY.NODE_MANIPULATOR", "WANDPED", false);
Research.addPrereq("GADOMANCY.NODE_MANIPULATOR", "FOCUSWARDING", false);
Research.addPrereq("GADOMANCY.NODE_MANIPULATOR", "PAVEWARD", false);

Research.moveResearch("GADOMANCY.INFUSIONCLAW", "ELDRITCH", 3, -5 as int);
Research.clearPrereqs("GADOMANCY.INFUSIONCLAW");
Research.addPrereq("GADOMANCY.INFUSIONCLAW", "VOIDMETAL", false);
Research.addPrereq("GADOMANCY.INFUSIONCLAW", "WANDPED", false);
Research.addPrereq("GADOMANCY.INFUSIONCLAW", "COREUSE", false);
Research.addPrereq("GADOMANCY.INFUSIONCLAW", "FOCUSPRIMAL", true);

Research.moveResearch("GADOMANCY.ESSENTIA_COMPRESSOR", "ELDRITCH", 5, -5 as int);
Research.clearPrereqs("GADOMANCY.ESSENTIA_COMPRESSOR");
Research.addPrereq("GADOMANCY.ESSENTIA_COMPRESSOR", "ESSENTIARESERVOIR", false);
Research.addPrereq("GADOMANCY.ESSENTIA_COMPRESSOR", "GADOMANCY.AURA_CORE", false);

Research.moveResearch("GADOMANCY.GROWING", "ELDRITCH", -1 as int, -7 as int);
Research.moveResearch("GADOMANCY.GROWING_AGGRESSION", "ELDRITCH", -4 as int, -6 as int);
Research.moveResearch("GADOMANCY.GROWING_GROWTH", "ELDRITCH", -3 as int, -5 as int);
Research.moveResearch("GADOMANCY.GROWING_ATTACK", "ELDRITCH", -2 as int, -4 as int);
Research.moveResearch("GADOMANCY.GROWING_GROWTHCLUE", "ELDRITCH", -5 as int, -3 as int);

Research.moveResearch("GADOMANCY.E_PORTAL_CREATOR", "ELDRITCH", -4 as int, 1);
Research.clearPrereqs("GADOMANCY.E_PORTAL_CREATOR");
Research.addPrereq("GADOMANCY.E_PORTAL_CREATOR", "OCULUS", false);
Research.addPrereq("GADOMANCY.E_PORTAL_CREATOR", "GADOMANCY.NODE_MANIPULATOR", true);

Research.moveResearch("TD.VOIDROBE", "ELDRITCH", -2 as int, -2 as int);
Research.clearPrereqs("TD.VOIDROBE");
Research.addPrereq("TD.VOIDROBE", "ARMORVOIDFORTRESS", false);

Research.moveResearch("TD.MASKEVIL", "ELDRITCH", -4 as int, -1 as int);
Research.clearPrereqs("TD.MASKEVIL");
Research.addPrereq("TD.MASKEVIL", "OCULUS", false);

Research.moveResearch("ALCHGRATE", "ELDRITCH", -4 as int, 6);

//PREVENT CRASH BY MOVING RANDOM PLACE
Research.moveResearch("ROD_bone", "THAUMATURGY", -5 as int, 9);
Research.moveResearch("ROD_bone_staff", "THAUMATURGY", -5 as int, 10);
Research.moveResearch("FOCUS_SMELT", "THAUMATURGY", -4 as int, 10);
//-----------

Research.moveResearch("FOCUS_SMELT", "THAUMATURGY", -1 as int, -6 as int);
Research.clearPrereqs("FOCUS_SMELT");
Research.addPrereq("FOCUS_SMELT", "FOCUSEXCAVATION", false);
Research.moveResearch("FOCUS_FLIGHT", "THAUMATURGY", 6, -4 as int);
Research.clearPrereqs("FOCUS_FLIGHT");
Research.addPrereq("FOCUS_FLIGHT", "FOCUSTRADE", false);
Research.addPrereq("FOCUS_FLIGHT", "ELEMENTALSWORD", false);

Research.moveResearch("FOCUS_DEFLECT", "THAUMATURGY", 8, -4 as int);
Research.clearPrereqs("FOCUS_DEFLECT");
Research.addPrereq("FOCUS_DEFLECT", "FOCUS_FLIGHT", false);

Research.moveResearch("FOCUS_HEAL", "THAUMATURGY", 9, -6 as int);
Research.clearPrereqs("FOCUS_HEAL");
Research.addPrereq("FOCUS_HEAL", "FOCUS_DEFLECT", false);

Research.moveResearch("FOCUS_DISLOCATION", "THAUMATURGY", 5, -6 as int);
Research.clearPrereqs("FOCUS_DISLOCATION");
Research.addPrereq("FOCUS_DISLOCATION", "FOCUS_FLIGHT", false);

Research.moveResearch("FOCUS_TELEKINESIS", "THAUMATURGY", 7, -6 as int);
Research.clearPrereqs("FOCUS_TELEKINESIS");
Research.addPrereq("FOCUS_TELEKINESIS", "FOCUS_FLIGHT", false);

Research.moveResearch("FOCUSPORTABLEHOLE", "THAUMATURGY", 6, -1 as int);

Research.moveResearch("FOCUS_ENDER_CHEST", "THAUMATURGY", 8, -2 as int);
Research.clearPrereqs("FOCUS_ENDER_CHEST");
Research.addPrereq("FOCUS_ENDER_CHEST", "FOCUS_FLIGHT", false);
Research.addPrereq("FOCUS_ENDER_CHEST", "FOCUSPORTABLEHOLE", false);
Research.addPrereq("FOCUS_ENDER_CHEST", "MIRROR", false);

Research.moveResearch("FOCUSWARDING", "THAUMATURGY", -4 as int, -4 as int);
Research.clearPrereqs("FOCUSWARDING");
Research.addPrereq("FOCUSWARDING", "focusIllumination", false);

Research.moveResearch("focusIllumination", "THAUMATURGY", -2 as int, -4 as int);
Research.clearPrereqs("focusIllumination");
Research.addPrereq("focusIllumination", "FOCUSEXCAVATION", false);

Research.addPrereq("FOCUSHELLBAT", "FOCUS_SMELT", false);

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

Research.moveResearch("CAP_gold", "THAUMATURGY", 3, 2);

Research.moveResearch("CAP_thaumium", "THAUMATURGY", 4, 4);
Research.moveResearch("CAP_silver", "THAUMATURGY", 2, 4);

Research.moveResearch("CAP_MECHANIST", "THAUMATURGY", 3, 6);
Research.clearPrereqs("CAP_MECHANIST");
Research.addPrereq("CAP_MECHANIST", "CAP_thaumium", false);

Research.moveResearch("CAP_SOJOURNER", "THAUMATURGY", 5, 6);
Research.clearPrereqs("CAP_SOJOURNER");
Research.addPrereq("CAP_SOJOURNER", "CAP_thaumium", false);

Research.moveResearch("ROD_TRANSMUTATION", "THAUMATURGY", -2 as int, 8);
Research.clearPrereqs("ROD_TRANSMUTATION");
Research.addPrereq("ROD_TRANSMUTATION", "ROD_NECROMANCER_staff", false);
Research.addPrereq("ROD_TRANSMUTATION", "INFUSION", false);

Research.moveResearch("ROD_TRANSMUTATION_staff", "THAUMATURGY", -1 as int, 8);
Research.clearPrereqs("ROD_TRANSMUTATION_staff");
Research.addPrereq("ROD_TRANSMUTATION_staff", "ROD_TRANSMUTATION", false);
Research.addPrereq("ROD_TRANSMUTATION_staff", "ROD_greatwood_staff", true);

Research.removeResearch("SHADOWMETAL");
Research.addResearch("SHADOWMETAL", "TM", "mettalum 3, vitium 3, tenebrae 3", 0, 1, 4, <TaintedMagic:ItemMaterial>);
Research.setConcealed("SHADOWMETAL", true);
Research.addPage("SHADOWMETAL", "tc.research_page.SHADOWMETAL.1");
game.setLocalization("en_US", "tc.research_name.SHADOWMETAL", "Shadowmetal");
game.setLocalization("en_US", "tc.research_text.SHADOWMETAL", "I have seen the truth");
game.setLocalization("en_US", "tc.research_page.SHADOWMETAL.1", "By doing experiments, you have found a way to infuse void metal in a way that somehow makes it much more durable and sturdy. This new metal shares some properties of the void metal but seems to be pretty different. <LINE> It is extremely hard and has a very high durability. You think you will need to research some more before it is usable, maybe the whispers can give you more information... but who knows.");
Research.addPrereq("SHADOWMETAL", "VOIDMETAL", false);

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

Research.orphanResearch("WG.ALCHEMICALMANUFACTURE");
Research.removeResearch("WG.ALCHEMICALMANUFACTURE");

Research.orphanResearch("WG.ARCANESTONE");
Research.removeResearch("WG.ARCANESTONE");

Research.orphanResearch("TXJARVOID");
Research.removeResearch("TXJARVOID");

Research.orphanResearch("TXROD_greatwood_staff");
Research.removeResearch("TXROD_greatwood_staff");

Research.orphanResearch("TXROD_greatwood");
Research.removeResearch("TXROD_greatwood");

Research.orphanResearch("TXCAP_thaumium");
Research.removeResearch("TXCAP_thaumium");

Research.orphanResearch("TXHOVERHARNESS");
Research.removeResearch("TXHOVERHARNESS");

Research.orphanResearch("TXBASICARTIFACE");
Research.removeResearch("TXBASICARTIFACE");

Research.orphanResearch("TXINFUSIONENCHANTMENT");
Research.removeResearch("TXINFUSIONENCHANTMENT");

Research.orphanResearch("TXDISTILESSENTIA");
Research.removeResearch("TXDISTILESSENTIA");

Research.orphanResearch("alternateGolemBell");
Research.removeResearch("alternateGolemBell");

Research.orphanResearch("focusLiquefaction");
Research.removeResearch("focusLiquefaction");

Research.orphanResearch("GADOMANCY.PSEUDO.BELLOWS");
Research.removeResearch("GADOMANCY.PSEUDO.BELLOWS");

Research.orphanResearch("GADOMANCY.PSEUDO.GOLEMTALLOW");
Research.removeResearch("GADOMANCY.PSEUDO.GOLEMTALLOW");

Research.orphanResearch("GADOMANCY.PSEUDO.JARLABEL");
Research.removeResearch("GADOMANCY.PSEUDO.JARLABEL");

Research.orphanResearch("GADOMANCY.PSEUDO.ESSENTIARESERVOIR");
Research.removeResearch("GADOMANCY.PSEUDO.ESSENTIARESERVOIR");

Research.orphanResearch("GADOMANCY.PSEUDO.INFUSIONENCHANTMENT");
Research.removeResearch("GADOMANCY.PSEUDO.INFUSIONENCHANTMENT");

Research.orphanResearch("GADOMANCY.PSEUDO.WANDPED");
Research.removeResearch("GADOMANCY.PSEUDO.WANDPED");

Research.orphanResearch("GADOMANCY.PSEUDO.VOIDMETAL");
Research.removeResearch("GADOMANCY.PSEUDO.VOIDMETAL");

Research.orphanResearch("GADOMANCY.PSEUDO.OCULUS");
Research.removeResearch("GADOMANCY.PSEUDO.OCULUS");

Research.orphanResearch("GADOMANCY.PSEUDO.COREGUARD");
Research.removeResearch("GADOMANCY.PSEUDO.COREGUARD");

Research.orphanResearch("GADOMANCY.PSEUDO.COREHARVEST");
Research.removeResearch("GADOMANCY.PSEUDO.COREHARVEST");

Research.orphanResearch("ENCHANTER");
Research.removeResearch("ENCHANTER");

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
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemNugget:2>);
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemNugget:3>);
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemNugget:4>);

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
Research.setRound("ALLOYBASIC", true);
Research.addSibling("ALLOYBASIC", "CRUSHIRON");
Research.addPage("ALLOYBASIC", "tc.research_page.ALLOYBASIC.1");
Research.addPrereq("ALLOYBASIC", "CRUSHIRON", false);
game.setLocalization("en_US", "tc.research_name.ALLOYBASIC", "Metal Alloying");
game.setLocalization("en_US", "tc.research_text.ALLOYBASIC", "Alloying of basic metals into complex blend");
game.setLocalization("en_US", "tc.research_page.ALLOYBASIC.1", "You have discovered a way to mix metal dusts into more complex versions of the base metals, you have tried multiple combinations and it seems like by mixing specific kind of metals together you can obtain more complex version of these same metal, which mean you can alloy metals by mixing their dusts.<BR>The first alloy you have discovered is Bronze, but you also found Invar, Electrum and Constantan. These alloys seems to be the best combination you can make from basic ores.");

Research.refreshResearchRecipe("PLANTS");
