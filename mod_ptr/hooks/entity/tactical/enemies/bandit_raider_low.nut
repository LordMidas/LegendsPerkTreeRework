::mods_hookExactClass("entity/tactical/enemies/bandit_raider_low", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.removeByType(::Const.SkillType.Perk);

		this.m.Skills.add(::new("scripts/skills/perks/perk_brawny"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_coup_de_grace"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_bullseye"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rotation"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_recover"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_quick_hands"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));

		this.m.Skills.addTreeOfEquippedWeapon(3);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));

			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_close_combat_archer"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloody_harvest"));
			this.m.Skills.addTreeOfEquippedWeapon(4);
		}
	}
});
