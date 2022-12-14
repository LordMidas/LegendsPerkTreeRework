::mods_hookExactClass("skills/backgrounds/squire_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.CalmTree],
			[0.2, ::Const.Perks.OrganisedTree],
			[0.25, ::Const.Perks.DeviousTree],
			[0.5, ::Const.Perks.ShieldTree],
			[2, ::Const.Perks.HeavyArmorTree],
			[0.5, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[30, ::Const.Perks.SoldierProfessionTree],
					[70, ::Const.Perks.NoTree]
				])
			],
			Traits = [
				::Const.Perks.TrainedTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[75, ::Const.Perks.SergeantClassTree],
					[25, ::Const.Perks.TacticianClassTree]
				])
			],
			Weapon = [
				::Const.Perks.PolearmTree,
				::Const.Perks.SwordTree
			]
		};
	}
});
