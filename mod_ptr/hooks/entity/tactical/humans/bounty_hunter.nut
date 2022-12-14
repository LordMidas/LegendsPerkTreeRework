::mods_hookExactClass("entity/tactical/humans/bounty_hunter", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(4);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(5);
			this.m.Skills.removeByID("perk.legend_mastery_nets");
			this.m.Skills.removeByID("perk.trophy_hunter");
			this.m.Skills.removeByID("perk.legend_big_game_hunter");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			local weapon = this.getMainhandItem();
			local offhandItem = this.getOffhandItem();

			if (weapon != null && weapon.isWeaponType(::Const.Items.WeaponType.Sword) && weapon.isItemType(::Const.Items.ItemType.OneHanded))
			{
				if (offhandItem == null || offhandItem.isItemType(::Const.Items.ItemType.Tool))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
				}
			}

			if (offhandItem != null && offhandItem.isItemType(::Const.Items.ItemType.Tool))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_legend_alert"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_legend_mastery_nets"));
			}

			this.m.Skills.add(::new("scripts/skills/perks/perk_str_line_breaker"));
		}
	}
});
