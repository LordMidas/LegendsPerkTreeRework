::mods_hookExactClass("entity/tactical/humans/mercenary", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.legend_smashing_shields");
		this.m.Skills.removeByID("perk.crippling_strikes");
		this.m.Skills.add(::new("scripts/skills/perks/perk_quick_hands"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_close_combat_archer"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_skirmisher"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.underdog");
			this.m.Skills.removeByID("perk.stalwart");
			this.m.Skills.removeByID("perk.steel_brow");
			this.m.Skills.addPerkTree(::Const.Perks.ThrowingTree);
			this.m.Skills.add(::new("scripts/skills/perks/perk_bullseye"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
		}
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			local attack = this.getSkills().getAttackOfOpportunity();
			if (attack != null)
			{
				if (attack.isDuelistValid())
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
				}
				else
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
				}
			}

			local weapon = this.getMainhandItem();
			if (weapon != null && weapon.isWeaponType(::Const.Items.WeaponType.Polearm))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
			}
		}
		local offhandItem = this.getOffhandItem();
		if (offhandItem != null && offhandItem.isItemType(::Const.Items.ItemType.Shield))
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_line_breaker"));
		}
	}
});
