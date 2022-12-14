::mods_hookExactClass("skills/backgrounds/retired_soldier_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.66, ::Const.Perks.AgileTree],
			[0.66, ::Const.Perks.FastTree],
			[0.25, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.DeviousTree],
			[2, ::Const.Perks.CalmTree],
			[2, ::Const.Perks.TalentedTree],
			[0.66, ::Const.Perks.LightArmorTree],
			[2, ::Const.Perks.HeavyArmorTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.SoldierProfessionTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.SergeantClassTree],
					[50, ::Const.Perks.TacticianClassTree]
				])
			]
		};
	}
});
