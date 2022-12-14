::mods_hookExactClass("skills/backgrounds/old_gladiator_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.1, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.DeviousTree],
			[2, ::Const.Perks.TacticianClassTree],
			[3, ::Const.Perks.HeavyArmorTree],
			[0.66, ::Const.Perks.ShieldTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[20, ::Const.Perks.RaiderProfessionTree],
					[10, ::Const.Perks.SoldierProfessionTree],
					[70, ::Const.Perks.NoTree]
				])
			],
			Class = [
				::Const.Perks.TrapperClassTree
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
