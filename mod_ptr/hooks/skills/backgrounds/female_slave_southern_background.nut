::mods_hookExactClass("skills/backgrounds/female_slave_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.SouthernersTree],
			[1.5, ::Const.Perks.CalmTree],
			[2, ::Const.Perks.FlailTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.PauperProfessionTree
			]
		};
	}
});
