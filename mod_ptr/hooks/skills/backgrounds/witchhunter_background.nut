::mods_hookExactClass("skills/backgrounds/witchhunter_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.CalmTree],
			[2, ::Const.Perks.AgileTree],
			[3, ::Const.Perks.ViciousTree],
			[0, ::Const.Perks.DeviousTree],
			[2, ::Const.Perks.TalentedTree],
			[0, ::Const.Perks.OrganisedTree],
			[3, ::Const.Perks.BowTree]
		];

		this.m.PerkTreeDynamic = {
			Class = [
				::Const.Perks.SergeantClassTree
			],
			Defense = [
				::Const.Perks.LightArmorTree
			],
			Weapon = [
				::Const.Perks.CrossbowTree
			]
			Styles = [
				::Const.Perks.RangedTree
			]
		};
	}
});
