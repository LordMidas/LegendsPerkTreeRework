::mods_hookExactClass("skills/backgrounds/tailor_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.5, ::Const.Perks.TalentedTree],
			[1.5, ::Const.Perks.OrganisedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ServiceProfessionTree
			],
			Class = [
				::Const.Perks.MenderClassTree
			]
		};
	}
});
