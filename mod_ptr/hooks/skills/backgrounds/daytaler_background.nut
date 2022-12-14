::mods_hookExactClass("skills/backgrounds/daytaler_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.25, ::Const.Perks.TalentedTree],
			[0.5, ::Const.Perks.TrainedTree],
			[1.25, ::Const.Perks.OrganisedTree],
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[51, ::Const.Perks.LaborerProfessionTree],
					[7, ::Const.Perks.ButcherProfessionTree],
					[7, ::Const.Perks.BlacksmithProfessionTree],
					[7, ::Const.Perks.MinerProfessionTree],
					[7, ::Const.Perks.FarmerProfessionTree],
					[7, ::Const.Perks.HunterProfessionTree],
					[7, ::Const.Perks.DiggerProfessionTree],
					[7, ::Const.Perks.LumberjackProfessionTree]
				])
			]
		};
	}
});
