::mods_hookExactClass("skills/backgrounds/brawler_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.TalentedTree],
			[0.25, ::Const.Perks.OrganisedTree],
			[2, ::Const.Perks.SergeantClassTree],
			[2, ::Const.Perks.ViciousTree],
			[2, ::Const.Perks.UnstoppableTree],
			[1.5, ::Const.Perks.HeavyArmorTree]
		];

		this.m.PerkTreeDynamic = {};
	}
});
