::mods_hookExactClass("entity/tactical/enemies/skeleton_medium", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_phalanx"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));

		if (this.Math.rand(1,100) <= 25)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_fearsome"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(5);
	}
});
