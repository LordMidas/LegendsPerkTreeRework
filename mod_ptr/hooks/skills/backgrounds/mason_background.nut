::mods_hookExactClass("skills/backgrounds/mason_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.5, ::Const.Perks.LargeTree],
			[1.5, ::Const.Perks.ResilientTree],
			[1.5, ::Const.Perks.SturdyTree],
			[6, ::Const.Perks.TalentedTree],
			[2, ::Const.Perks.HeavyArmorTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.LaborerProfessionTree
			]
		};
	}
});
