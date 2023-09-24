::mods_hookExactClass("entity/tactical/humans/militia_guest", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.legend_specialist_militia_skill");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.legend_specialist_militia_damage");
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(4);
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(2);
		}
	}
});
