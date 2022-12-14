::mods_hookExactClass("skills/backgrounds/legend_noble_event_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.CalmTree],
			[3, ::Const.Perks.TalentedTree],
			[2, ::Const.Perks.TrainedTree],
			[2, ::Const.Perks.ViciousTree],
			[0, ::Const.Perks.DeviousTree],
			[0, ::Const.Perks.ShieldTree],
			[3, ::Const.Perks.SwordTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.NobleProfessionTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.SergeantClassTree],
					[50, ::Const.Perks.TacticianClassTree]
				])
			],
			Weapon = [
				::Const.Perks.PolearmTree
			],
			Styles = [
				::Const.Perks.TwoHandedTree,
				::Const.Perks.OneHandedTree
			]
		};
	}
});
