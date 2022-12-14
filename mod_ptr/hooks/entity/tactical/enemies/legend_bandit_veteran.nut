::mods_hookExactClass("entity/tactical/enemies/legend_bandit_veteran", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.removeByType(::Const.SkillType.Perk);
		this.m.Skills.addTreeOfEquippedWeapon();
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);

		this.m.Skills.add(::new("scripts/skills/perks/perk_brawny"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_coup_de_grace"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rotation"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_recover"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_battle_forged"));
		//this.m.Skills.add(::new("scripts/skills/perks/perk_legend_lithe"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_quick_hands"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_close_combat_archer"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_momentum"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_know_their_weakness"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));

		this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_backstabber"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_underdog"));
			this.m.Skills.addPerkTree(::Const.Perks.ThrowingTree);
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));

			local weapon = this.getMainhandItem();
			if (weapon != null)
			{
				if(weapon.isItemType(::Const.Items.ItemType.TwoHanded))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
				}

				if (weapon.isWeaponType(::Const.Items.WeaponType.Polearm))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
				}
			}
		}
	}
});
