::mods_hookExactClass("entity/tactical/humans/mercenary_low", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.nimble");
		this.m.Skills.removeByID("perk.backstabber");
		this.m.Skills.removeByID("perk.overwhelm");
		this.m.Skills.add(::new("scripts/skills/perks/perk_quick_hands"));
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(5);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(6);
			local weapon = this.getMainhandItem();
			if (weapon != null)
			{
				if (weapon.isWeaponType(::Const.Items.WeaponType.Polearm))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
				}

				if (weapon.isItemType(::Const.Items.ItemType.TwoHanded))
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
				}
				else if (weapon.isWeaponType(::Const.Items.WeaponType.Sword))
				{
					local offhandItem = this.getOffhandItem();
					if (offhandItem == null || offhandItem.isItemType(::Const.Items.ItemType.Tool))
					{
						this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
					}
				}
			}
		}
		local offhandItem = this.getOffhandItem();
		if (offhandItem != null && offhandItem.isItemType(::Const.Items.ItemType.Shield))
		{
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
			}
			this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
		}
	}
});
