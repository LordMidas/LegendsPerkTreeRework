::mods_hookExactClass("skills/backgrounds/female_thief_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.LargeTree],
			[0.5, ::Const.Perks.SturdyTree],
			[0.75, ::Const.Perks.ResilientTree],
			[1.5, ::Const.Perks.FastTree],
			[1.5, ::Const.Perks.AgileTree],
			[1.25, ::Const.Perks.TalentedTree],
			[0.66, ::Const.Perks.ShieldTree],
			[2, ::Const.Perks.OneHandedTree],
			[3, ::Const.Perks.DaggerTree]
		];

		this.m.PerkTreeDynamic = {
			Traits = [
				::Const.Perks.DeviousTree
			],
			Defense = [
				::Const.Perks.LightArmorTree
			]
		};
	}
});
