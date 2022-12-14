::mods_hookExactClass("skills/backgrounds/lindwurm_slayer_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0, ::Const.Perks.DeviousTree],
			[0, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.LightArmorTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0.5, ::Const.Perks.DaggerTree],
			[0, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.RangedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.SoldierProfessionTree
			],
			Enemy = [
				::Const.Perks.LindwurmTree
			]
		};
	}
});
