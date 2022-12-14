::mods_hookExactClass("skills/backgrounds/female_miller_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.5, ::Const.Perks.LargeTree],
			[1.5, ::Const.Perks.ResilientTree],
			[1.5, ::Const.Perks.SturdyTree],
			[0.5, ::Const.Perks.TrainedTree],
			[1.5, ::Const.Perks.OrganisedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.LaborerProfessionTree
			]
		};
	}
});
