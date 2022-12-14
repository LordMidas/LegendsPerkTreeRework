::mods_hookExactClass("skills/backgrounds/caravan_hand_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.OutlandersTree],
			[2, ::Const.Perks.MenderClassTree],
			[2, ::Const.Perks.ChefClassTree],
			[2, ::Const.Perks.ClerkClassTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.LaborerProfessionTree
			],
			Traits = [
				::Const.Perks.OrganisedTree
			]
		};
	}
});
