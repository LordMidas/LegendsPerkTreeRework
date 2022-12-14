::mods_hookExactClass("skills/backgrounds/cultist_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.5, ::Const.Perks.CalmTree],
			[1.5, ::Const.Perks.ResilientTree],
			[1.5, ::Const.Perks.ViciousTree],
			[1.5, ::Const.Perks.UnstoppableTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.CultistProfessionTree
			],
			Weapon = [
				::Const.Perks.CleaverTree
			]
		};
	}
});
