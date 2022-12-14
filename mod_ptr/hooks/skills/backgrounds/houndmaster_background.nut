::mods_hookExactClass("skills/backgrounds/houndmaster_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.AlpTree]
		];

		this.m.PerkTreeDynamic = {
			Class = [
				::Const.Perks.HoundmasterClassTree
			]
		};
	}
});
