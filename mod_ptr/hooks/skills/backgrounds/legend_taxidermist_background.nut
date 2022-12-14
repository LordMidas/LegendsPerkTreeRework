::mods_hookExactClass("skills/backgrounds/legend_taxidermist_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[5, ::Const.Perks.TrapperClassTree],
			[2, ::Const.Perks.HoundmasterClassTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ServiceProfessionTree
			],
			Enemy = [
				::Const.Perks.BeastsTree
			],
		 	Traits = [
				::Const.Perks.OrganisedTree
			],
			Class = [
				::Const.Perks.MenderClassTree
			]
		};
	}
});
