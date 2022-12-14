::mods_hookExactClass("skills/backgrounds/legend_astrologist_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[5, ::Const.Perks.TalentedTree],
			[1.66, ::Const.Perks.OrganisedTree],
			[5, ::Const.Perks.StaffTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ServiceProfessionTree
			],
			Magic = [
				::Const.Perks.PremonitionMagicTree
			]
		};
	}
});
