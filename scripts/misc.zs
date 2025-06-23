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

recipes.remove(<minecraft:lead>);
recipes.addShapedMirrored(<minecraft:lead> * 2, [
	[<minecraft:string>, <minecraft:string>, null],
	[<minecraft:string>, <minecraft:string>, null],
	[null, null, <minecraft:string>]
]);

recipes.remove(<netherlicious:BoneTorch>);
recipes.addShaped(<netherlicious:BoneTorch> * 4, [
	[<RealisticTorches:GlowstoneCrystal>],
	[<ore:stickWood>]
]);

recipes.remove(<netherlicious:SoulTorch>);
recipes.addShaped(<netherlicious:SoulTorch> * 4, [
	[<RealisticTorches:GlowstoneCrystal>],
	[<ore:stickWood>],
	[<ore:blockSoul>]
]);

recipes.remove(<netherlicious:SoulBoneTorch>);
recipes.addShaped(<netherlicious:SoulBoneTorch> * 4, [
	[<RealisticTorches:GlowstoneCrystal>],
	[<minecraft:bone>],
	[<ore:blockSoul>]
]);

recipes.remove(<netherlicious:FoxfireTorch>);
recipes.addShaped(<netherlicious:FoxfireTorch> * 4, [
	[<RealisticTorches:GlowstoneCrystal>],
	[<ore:stickWood>],
	[<netherlicious:FoxfireLily>]
]);

recipes.remove(<netherlicious:FoxfireBoneTorch>);
recipes.addShaped(<netherlicious:FoxfireBoneTorch> * 4, [
	[<RealisticTorches:GlowstoneCrystal>],
	[<minecraft:bone>],
	[<netherlicious:FoxfireLily>]
]);

recipes.remove(<netherlicious:ShadowTorch>);
recipes.addShaped(<netherlicious:ShadowTorch> * 4, [
	[<RealisticTorches:GlowstoneCrystal>],
	[<ore:stickWood>],
	[<netherlicious:CryingBlackstone>]
]);

recipes.remove(<netherlicious:ShadowBoneTorch>);
recipes.addShaped(<netherlicious:ShadowBoneTorch> * 4, [
	[<RealisticTorches:GlowstoneCrystal>],
	[<minecraft:bone>],
	[<netherlicious:CryingBlackstone>]
]);

recipes.remove(<campfirebackport:campfire>);
recipes.addShapeless(<campfirebackport:campfire_base>, [<ore:stickWood>, <ore:logWood>, <ore:itemCoal>]);

recipes.remove(<campfirebackport:soul_campfire>);
recipes.addShapeless(<campfirebackport:soul_campfire_base>, [<ore:stickWood>, <ore:logWood>, <ore:itemCoal>, <ore:blockSoul>]);

recipes.remove(<campfirebackport:foxfire_campfire>);
recipes.addShapeless(<campfirebackport:foxfire_campfire_base>, [<ore:stickWood>, <ore:logWood>, <ore:itemCoal>, <netherlicious:FoxfireLily>]);

recipes.remove(<campfirebackport:shadow_campfire>);
recipes.addShapeless(<campfirebackport:shadow_campfire_base>, [<ore:stickWood>, <ore:logWood>, <ore:itemCoal>, <netherlicious:CryingBlackstone>]);

recipes.remove(<RealisticTorches:Matchbox>);
recipes.addShapeless(<RealisticTorches:Matchbox>, [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]);

recipes.addShapeless(<campfirebackport:campfire>, [<campfirebackport:campfire_base>, <RealisticTorches:Matchbox>.transformDamage(8)]);
recipes.addShapeless(<campfirebackport:soul_campfire>, [<campfirebackport:soul_campfire_base>, <RealisticTorches:Matchbox>.transformDamage(8)]);
recipes.addShapeless(<campfirebackport:foxfire_campfire>, [<campfirebackport:foxfire_campfire_base>, <RealisticTorches:Matchbox>.transformDamage(8)]);
recipes.addShapeless(<campfirebackport:shadow_campfire>, [<campfirebackport:shadow_campfire_base>, <RealisticTorches:Matchbox>.transformDamage(8)]);

mods.campfirebackport.addCampfireRecipe("both", <RealisticTorches:TorchUnlit>, <RealisticTorches:TorchLit>, 1); 
mods.campfirebackport.addCampfireRecipe("both", <RealisticTorches:TorchSmoldering>, <RealisticTorches:TorchLit>, 1); 
mods.campfirebackport.addCampfireIgnitor("both", <RealisticTorches:Matchbox:*>, "damageable", 8, null, true);

recipes.remove(<dmod:bundle>);
recipes.addShapeless(<dmod:bundle>, [<minecraft:string>, <ore:itemLeather>]);