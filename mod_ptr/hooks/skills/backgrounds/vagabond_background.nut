::mods_hookExactClass("skills/backgrounds/vagabond_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.LargeTree],
			[2, ::Const.Perks.UnstoppableTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.LaborerProfessionTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[75, ::Const.Perks.ScoutClassTree],
					[25, ::Const.Perks.NoTree]
				])
			]
		};
	}
});
