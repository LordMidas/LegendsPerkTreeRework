::mods_hookExactClass("skills/backgrounds/legend_witch_commander_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		::PTR.HooksHelper.addPerkTreesToCustomPerkTree(this.m.CustomPerkTree,
	 		[
	 			::Const.Perks.TalentedTree,
	 			::Const.Perks.StaffTree,
	 			::Const.Perks.TwoHandedTree
	 		]
	 	);

	 	::PTR.HooksHelper.addPerksToCustomPerkTree(4, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.LegendFavouredEnemyAlps,
				::Const.Perks.PerkDefs.LegendFavouredEnemyHexen,
				::Const.Perks.PerkDefs.LegendFavouredEnemyVampire
			]
		);

	 	::PTR.HooksHelper.addPerksToCustomPerkTree(7, this.m.CustomPerkTree, [
				::Const.Perks.PerkDefs.PTRRisingStar
			]
		);
	}
});
