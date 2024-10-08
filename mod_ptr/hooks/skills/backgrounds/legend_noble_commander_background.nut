::mods_hookExactClass("skills/backgrounds/legend_noble_commander_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.CustomPerkTree = ::PTR.HooksHelper.clearCustomPerkTree(this.m.CustomPerkTree);

		::PTR.HooksHelper.addPerkTreesToCustomPerkTree(this.m.CustomPerkTree,
			[
				::Const.Perks.NobleProfessionTree,
				::Const.Perks.PolearmTree,
				::Const.Perks.TwoHandedTree,
				::Const.Perks.LightArmorTree,
				::Const.Perks.SergeantClassTree,
				::Const.Perks.TacticianClassTree,
				::Const.Perks.ViciousTree,
				::Const.Perks.CalmTree,
				::Const.Perks.TrainedTree,
				::Const.Perks.TalentedTree,
				::Const.Perks.SwordTree,
				::Const.Perks.FlailTree,
				::Const.Perks.MediumArmorTree
			]
		);


		::PTR.HooksHelper.addPerksToCustomPerkTree(1, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.Recover,
				::Const.Perks.PerkDefs.Pathfinder,
				::Const.Perks.PerkDefs.BagsAndBelts
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(2, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.Anticipation
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(3, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.PTRPatternRecognition
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(4, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
				::Const.Perks.PerkDefs.LegendFavouredEnemySoutherner,
				::Const.Perks.PerkDefs.LegendFavouredEnemyBandit,
				::Const.Perks.PerkDefs.LegendFavouredEnemyBarbarian
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(5, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.PTRExudeConfidence,
				::Const.Perks.PerkDefs.Footwork,
				::Const.Perks.PerkDefs.PTRBetweenTheEyes
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(6, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.PTRBully
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(7, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.LegendRelax,
				::Const.Perks.PerkDefs.Rebound,
				::Const.Perks.PerkDefs.BattleFlow
			]
		);
	}
});
