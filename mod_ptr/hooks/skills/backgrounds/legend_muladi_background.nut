::mods_hookExactClass("skills/backgrounds/legend_muladi_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.ResilientTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HunterProfessionTree
			],
			Traits = [
				::Const.Perks.AgileTree
			],
			Class = [
				::Const.Perks.ScoutClassTree
			],
			Weapon = [
				::MSU.Class.WeightedContainer([
					[25, ::Const.Perks.BowTree],
					[25, ::Const.Perks.CrossbowTree],
					[25, ::Const.Perks.SlingTree],
					[25, ::Const.Perks.ThrowingTree]
				])
			]
		};
	}
});
