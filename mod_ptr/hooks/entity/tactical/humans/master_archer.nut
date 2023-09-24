::mods_hookExactClass("entity/tactical/humans/master_archer", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.getBaseProperties().Vision = 7;
		this.getBaseProperties().DamageDirectMult = 1.0;

		this.m.Skills.removeByID("perk.head_hunter");
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_through_the_ranks"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_rebound"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		local weapon = this.getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(::Const.Items.WeaponType.Bow))
			{
				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_eyes_up"));
				}
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_target_practice"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_ranged_supremacy"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_flaming_arrows"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hip_shooter"));
			}
			else //if crossbow
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_power_shot"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_iron_sights"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));

				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_muscle_memory"));
				}
			}
		}
	}
});
