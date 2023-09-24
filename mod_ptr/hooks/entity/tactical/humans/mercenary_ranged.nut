::mods_hookExactClass("entity/tactical/humans/mercenary_ranged", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.overwhelm");

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.nine_lives");
			this.m.Skills.removeByID("perk.lone_wolf");
			this.m.Skills.removeByID("perk.berserk");
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_perfect_fit"));
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
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_ranged_supremacy"));
				}
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_target_practice"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_hip_shooter"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_flaming_arrows"));
			}
			else if (weapon.isWeaponType(::Const.Items.WeaponType.Crossbow))
			{
				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_iron_sights"));
				}
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_power_shot"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_muscle_memory"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));
			}
		}
	}
});
