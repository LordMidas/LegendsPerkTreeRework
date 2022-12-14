::mods_hookExactClass("skills/backgrounds/eunuch_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.HexenTree],
			[3, ::Const.Perks.TalentedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ServiceProfessionTree
			]
		};
	}
});
