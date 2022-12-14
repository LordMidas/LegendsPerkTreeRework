::mods_hookExactClass("skills/backgrounds/legend_qiyan_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.ViciousTree],
			[2, ::Const.Perks.AgileTree],
			[2, ::Const.Perks.FastTree],
			[3, ::Const.Perks.LightArmorTree],
			[0.66, ::Const.Perks.ShieldTree],
			[3, ::Const.Perks.DaggerTree],
			[2, ::Const.Perks.SwordTree],
			[2, ::Const.Perks.ThrowingTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.MinstrelProfessionTree
			],
			Class = [
				::Const.Perks.EntertainerClassTree
			],
			Styles = [
				::Const.Perks.OneHandedTree
			]
		};
	}
});
