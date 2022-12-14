::mods_hookExactClass("skills/backgrounds/slave_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.SouthernersTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.PauperProfessionTree
			]
		};
	}
});
