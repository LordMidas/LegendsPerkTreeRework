::mods_hookExactClass("skills/backgrounds/juggler_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.TalentedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.JugglerProfessionTree
			],
			Traits = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.AgileTree],
					[50, ::Const.Perks.FastTree]
				])
			],
			Class = [
				::Const.Perks.EntertainerClassTree
			]
		};
	}
});
