::mods_hookExactClass("skills/backgrounds/legend_female_inventor_commander_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.CustomPerkTree = ::PTR.HooksHelper.clearCustomPerkTree(this.m.CustomPerkTree);

		::PTR.HooksHelper.addPerkTreesToCustomPerkTree(this.m.CustomPerkTree,
			[
				::Const.Perks.CrossbowTree,
				::Const.Perks.FlailTree,
				::Const.Perks.StaffTree,
				::Const.Perks.LightArmorTree,
				::Const.Perks.MediumArmorTree,
				::Const.Perks.OrganisedTree,
				::Const.Perks.TalentedTree,
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree,
				::Const.Perks.RangedTree,
				::Const.Perks.InventorMagicTree,
				::Const.Perks.PhilosophyMagicTree,
				::Const.Perks.MenderClassTree,
				::Const.Perks.PolearmTree,
				::Const.Perks.TrapperClassTree
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(1, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.LegendMedIngredients,
				::Const.Perks.PerkDefs.NineLives,
				::Const.Perks.PerkDefs.LegendAlert,
				::Const.Perks.PerkDefs.LegendBackToBasics
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(2, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.QuickHands,
				::Const.Perks.PerkDefs.PTRSurvivalInstinct
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(3, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.Debilitate,
				::Const.Perks.PerkDefs.LegendBlendIn
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(4, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.LegendSpecBandage,
				::Const.Perks.PerkDefs.PTRVigilant,
				::Const.Perks.PerkDefs.LegendMasteryNets
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(5, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.Footwork,
				::Const.Perks.PerkDefs.PTRDynamicDuo,
				::Const.Perks.PerkDefs.LegendEscapeArtist
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(6, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.PTRKnowTheirWeakness,
				::Const.Perks.PerkDefs.LegendClarity
			]
		);

		::PTR.HooksHelper.addPerksToCustomPerkTree(7, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.LegendFieldTriage,
				::Const.Perks.PerkDefs.PTRRisingStar,
				::Const.Perks.PerkDefs.PerfectFocus
			]
		);
	}
});
