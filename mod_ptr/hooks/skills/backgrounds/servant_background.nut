::mods_hookExactClass("skills/backgrounds/servant_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.5, ::Const.Perks.TalentedTree],
			[2, ::Const.Perks.OrganisedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ServiceProfessionTree
			]
		};
	}
});
