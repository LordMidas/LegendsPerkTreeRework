::mods_hookExactClass("entity/tactical/humans/conscript_polearm", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.removeByType(::Const.SkillType.Perk);
		this.m.Skills.addTreeOfEquippedWeapon(4);
		this.m.Skills.add(::new("scripts/skills/perks/perk_nimble"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_brawny"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rotation"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_recover"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_pathfinder"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rebound"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(7);
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_alert"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_fresh_and_furious"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hale_and_hearty"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_overwhelm"));
		}
	}
});
