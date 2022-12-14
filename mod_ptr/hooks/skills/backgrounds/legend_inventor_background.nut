::mods_hookExactClass("skills/backgrounds/legend_inventor_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.InventorMagicTree
			],
			Traits = [
				::Const.Perks.OrganisedTree,
				::Const.Perks.TalentedTree
			],
			Class = [
				::Const.Perks.MenderClassTree
			]
			Magic = [
				::Const.Perks.InventorMagicTree,
				::Const.Perks.PhilosophyMagicTree
			]
		};
	}
});
