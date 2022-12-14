::mods_hookExactClass("skills/backgrounds/deserter_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.25, ::Const.Perks.CalmTree],
			[0.75, ::Const.Perks.DeviousTree],
			[0.25, ::Const.Perks.SergeantClassTree],
			[2, ::Const.Perks.ShieldTree],
			[2, ::Const.Perks.HeavyArmorTree],
			[0.5, ::Const.Perks.LightArmorTree],
			[2, ::Const.Perks.PolearmTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.SoldierProfessionTree
			]
		};
	}
});
