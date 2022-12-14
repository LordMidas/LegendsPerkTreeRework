::mods_hookExactClass("entity/tactical/humans/bounty_hunter_ranged", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.trophy_hunter");
			this.m.Skills.removeByID("perk.legend_big_game_hunter");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			this.m.Skills.removeByID("perk.head_hunter");
		}
		else
		{
			this.m.Skills.removeByID("perk.nimble");
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
		}
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		local weapon = this.getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(::Const.Items.WeaponType.Bow))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_ranged_supremacy"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_target_practice"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_eyes_up"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_mastery_bow"));

				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_flaming_arrows"));
				}
			}
			else if (weapon.isWeaponType(::Const.Items.WeaponType.Crossbow))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_through_the_ranks"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_entrenched"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_mastery_crossbow"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));

				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_iron_sights"));
				}
			}
		}

	}
});
