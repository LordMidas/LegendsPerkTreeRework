::mods_hookExactClass("skills/backgrounds/legend_puppet_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
				[0.5, ::Const.Perks.CaravanTree],
				[0.5, ::Const.Perks.NoblesTree],
				[0.33, ::Const.Perks.ViciousTree],
				[0, ::Const.Perks.DeviousTree],
				[0, ::Const.Perks.TalentedTree],
				[0, ::Const.Perks.CalmTree],
				[0, ::Const.Perks.OrganisedTree],
				[0, ::Const.Perks.TrainedTree],
				[0, ::Const.Perks.BowTree],
				[0, ::Const.Perks.CrossbowTree],
				[0, ::Const.Perks.SlingTree],
				[0, ::Const.Perks.ThrowingTree],
				[0, ::Const.Perks.RangedTree]
			];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.RaiderProfessionTree
			],
		};
	}
});
