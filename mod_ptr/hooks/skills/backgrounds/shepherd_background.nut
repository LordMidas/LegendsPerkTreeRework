::mods_hookExactClass("skills/backgrounds/shepherd_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.LaborerProfessionTree
			],
			Weapon = [
				::Const.Perks.SlingTree,
				::Const.Perks.StaffTree
			]
		};
	}
});
