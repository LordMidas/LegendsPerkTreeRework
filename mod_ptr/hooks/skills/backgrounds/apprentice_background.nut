::mods_hookExactClass("skills/backgrounds/apprentice_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.TalentedTree ]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[12, ::Const.Perks.ButcherProfessionTree],
					[12, ::Const.Perks.BlacksmithProfessionTree],
					[12, ::Const.Perks.TraderProfessionTree],
					[12, ::Const.Perks.ApothecaryProfessionTree],
					[12, ::Const.Perks.LaborerProfessionTree],
					[12, ::Const.Perks.ServiceProfessionTree],
					[28, ::Const.Perks.NoTree]
				])
			],
		};
	}
});
