::mods_hookExactClass("entity/tactical/humans/caravan_guard", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.add(::new("scripts/skills/perks/perk_rotation"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_efficient_packing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_skillful_stacking"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(4);
			this.m.Skills.removeByID("perk.legend_alert");
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(3);
		}
	}
});
