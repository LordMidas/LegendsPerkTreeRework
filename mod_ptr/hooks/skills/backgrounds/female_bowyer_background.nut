::mods_hookExactClass("skills/backgrounds/female_bowyer_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.TalentedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HunterProfessionTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.NoTree],
					[50, ::Const.Perks.MenderClassTree]
				])
			],
			Defense = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.LightArmorTree],
					[50, ::Const.Perks.MediumArmorTree]
				])
			],
			Weapon = [
				::Const.Perks.BowTree
			]
		};
	}
});
