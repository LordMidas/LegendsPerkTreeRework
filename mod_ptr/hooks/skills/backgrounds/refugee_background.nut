::mods_hookExactClass("skills/backgrounds/refugee_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.CalmTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.PauperProfessionTree
			]
		};
	}
});
