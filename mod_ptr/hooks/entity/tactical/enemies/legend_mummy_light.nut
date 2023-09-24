::mods_hookExactClass("entity/tactical/enemies/legend_mummy_light", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		if (this.isArmedWithMeleeWeapon())
		{
			this.m.Skills.addTreeOfEquippedWeapon(3);
		}

		this.m.Skills.add(::new("scripts/skills/perks/perk_str_phalanx"));
		if (::Math.rand(1, 100) <= 50) this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_eyes_up"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));

		if (this.Math.rand(1,100) <= 25)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hip_shooter"));
		}

	}
});
