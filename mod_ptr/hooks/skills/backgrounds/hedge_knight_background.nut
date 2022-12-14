::mods_hookExactClass("skills/backgrounds/hedge_knight_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.25, ::Const.Perks.AgileTree],
			[0.25, ::Const.Perks.FastTree],
			[0.1, ::Const.Perks.DeviousTree],
			[0.1, ::Const.Perks.OrganisedTree],
			[0.5, ::Const.Perks.TalentedTree],
			[0.5, ::Const.Perks.CalmTree],
			[2, ::Const.Perks.TacticianClassTree],
			[2, ::Const.Perks.MediumArmorTree],
			[0.66, ::Const.Perks.ShieldTree],
			[0.1, ::Const.Perks.LightArmorTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0.5, ::Const.Perks.DaggerTree],
			[0, ::Const.Perks.SlingTree],
			[0.16, ::Const.Perks.SpearTree],
			[0.25, ::Const.Perks.StaffTree],
			[0.25, ::Const.Perks.ThrowingTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[20, ::Const.Perks.RaiderProfessionTree],
					[10, ::Const.Perks.SoldierProfessionTree],
					[70, ::Const.Perks.NoTree]
				])
			],
			Defense = [
				::Const.Perks.HeavyArmorTree
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			],
			Enemy = [
				::Const.Perks.SwordmastersTree
			]

		};
	}
});
