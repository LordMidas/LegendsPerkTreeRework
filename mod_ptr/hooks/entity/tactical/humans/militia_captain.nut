::mods_hookExactClass("entity/tactical/humans/militia_captain", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		local b = this.getBaseProperties();
		b.RangedDefense += 10;
		local c = this.getCurrentProperties();
		c.RangedDefense += 10;
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rotation"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_shields_up"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_hold_the_line"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_push_forward"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_exude_confidence"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_anticipation"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_phalanx"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.legend_composure");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			this.m.Skills.removeByID("perk.legend_smashing_shields");
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.add(::new("scripts/skills/perks/perk_fortified_mind"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
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
			this.m.Skills.addTreeOfEquippedWeapon(6);
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(5);
		}
	}
});
