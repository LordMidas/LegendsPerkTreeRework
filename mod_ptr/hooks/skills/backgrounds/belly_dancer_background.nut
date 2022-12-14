::mods_hookExactClass("skills/backgrounds/belly_dancer_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.ResilientTree],
			[0.25, ::Const.Perks.LargeTree],
			[0.25, ::Const.Perks.SturdyTree],
			[1.5, ::Const.Perks.TalentedTree],
			[2, ::Const.Perks.MediumArmorTree],
			[4, ::Const.Perks.LightArmorTree]
		];

		this.m.PerkTreeDynamic = {
			Traits = [
				::Const.Perks.FastTree
			],
			Class = [
				::Const.Perks.EntertainerClassTree
			],
			Defense = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.LightArmorTree],
					[50, ::Const.Perks.MediumArmorTree]
				])
			]
		};
	}
});
