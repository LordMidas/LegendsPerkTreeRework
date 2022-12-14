::mods_hookExactClass("skills/backgrounds/legend_magister_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0, ::Const.Perks.ShieldTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.ThrowingTree],
			[2, ::Const.Perks.TalentedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.CultistProfessionTree
			],
			Traits = [
				::Const.Perks.CalmTree
			],
			Class = [
				::Const.Perks.SergeantClassTree
			],
			Weapon = [
				::Const.Perks.CleaverTree,
				::Const.Perks.PolearmTree
			],
			Magic = [
				::Const.Perks.PremonitionMagicTree
			]
		};
	}
});
