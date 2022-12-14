::mods_hookExactClass("skills/backgrounds/legend_assassin_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.CustomPerkTree = ::PTR.HooksHelper.clearCustomPerkTree(this.m.CustomPerkTree);
		::PTR.HooksHelper.addPerkTreesToCustomPerkTree(this.m.CustomPerkTree,
			[
				::Const.Perks.DaggerTree,
				::Const.Perks.SwordTree,
				::Const.Perks.LightArmorTree,
				::Const.Perks.AgileTree,
				::Const.Perks.ViciousTree,
				::Const.Perks.FastTree,
				::Const.Perks.UnstoppableTree,
				::Const.Perks.DeviousTree,
				::Const.Perks.TrapperClassTree,
				::Const.Perks.MaceTree
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(1, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.LegendSpecialistKnifeSkill,
				::Const.Perks.PerkDefs.BagsAndBelts,
				::Const.Perks.PerkDefs.Recover,
				::Const.Perks.PerkDefs.PTRSmallTarget,
				::Const.Perks.PerkDefs.PTRDeepCuts,
				::Const.Perks.PerkDefs.NineLives
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(2, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.PTRBetweenTheEyes,
				::Const.Perks.PerkDefs.LegendSpecialistKnifeDamage,
				::Const.Perks.PerkDefs.LegendHairSplitter,
				::Const.Perks.PerkDefs.PTRTunnelVision
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(3, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.LegendHidden,
				::Const.Perks.PerkDefs.PTRVigilant,
				::Const.Perks.PerkDefs.PTRPatternRecognition,
				::Const.Perks.PerkDefs.Rotation,
				::Const.Perks.PerkDefs.PTRTraumaSurvivor
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(4, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.PTROffhandTraining,
				::Const.Perks.PerkDefs.LegendFavouredEnemySoutherner,
				::Const.Perks.PerkDefs.LegendPoisonImmunity,
				::Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
				::Const.Perks.PerkDefs.LegendFavouredEnemySwordmaster,
				::Const.Perks.PerkDefs.BoondockBlade,
				::Const.Perks.PerkDefs.LegendBackflip
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(5, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.DoubleStrike,
				::Const.Perks.PerkDefs.HeadHunter,
				::Const.Perks.PerkDefs.PTRKnowTheirWeakness
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(6, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.Duelist,
				::Const.Perks.PerkDefs.PTRPrimalFear,
				::Const.Perks.PerkDefs.LegendClarity,
				::Const.Perks.PerkDefs.LegendTwirl
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(7, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.PTRVanguardDeployment,
				::Const.Perks.PerkDefs.BFFencer,
				::Const.Perks.PerkDefs.PerfectFocus,
				::Const.Perks.PerkDefs.LegendAssassinate,
				::Const.Perks.PerkDefs.LegendTumble
			]
		);
	}
});
