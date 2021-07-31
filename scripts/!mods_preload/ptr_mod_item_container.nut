local gt = this.getroottable();

gt.Const.PTR.modItemContainer <- function()
{
	::mods_hookNewObject("items/item_container", function(o) {
		o.isActionAffordable = function ( _items )
		{
			local actionCost = this.getActionCost(_items);
			return this.m.Actor.getActionPoints() >= actionCost;

			# local isShield = false;
			# local ammoItemsCount = 0;
			# local twoHandedItemsCount = 0;
			#
			# foreach( i in _items )
			# {
			# 	if (i == null)
			# 	{
			# 		continue;
			# 	}
			#
			# 	if (i.isItemType(this.Const.Items.ItemType.Shield))
			# 	{
			# 		isShield = true;
			# 		break;
			# 	}
			#
			# 	if (i.isItemType(this.Const.Items.ItemType.Ammo))
			# 	{
			# 		ammoItemsCount++;
			# 	}
			#
			# 	if (i.isItemType(this.Const.Items.ItemType.TwoHanded) && i.isItemType(this.Const.Items.ItemType.MeleeWeapon))
			# 	{
			# 		twoHandedItemsCount++;
			# 	}
			#
			# 	if (i.isItemType(this.Const.Items.ItemType.OneHanded) && i.isItemType(this.Const.Items.ItemType.MeleeWeapon))
			# 	{
			# 		oneHandedItemsCount++;
			# 	}
			# }
			#
			# if (ammoItemsCount >= 2 && this.m.Actor.getSkills().hasSkill("perk.ptr_target_practice"))
			# {
			# 	return true;
			# }
			#
			# if (isShield || twoHandedItemsCount >= 2)
			# {
			# 	return this.m.Actor.getActionPoints() >= this.m.ActionCost2H;
			# }
			#
			# return this.m.Actor.getActionPoints() >= this.m.ActionCost;
		}

		o.getActionCost = function ( _items )
		{
			local isShield = false;
			local ammoItemsCount = 0;
			local twoHandedItemsCount = 0;
			local oneHandedItemsCount = 0;
			local toolItemsCount = 0;

			local shieldID = "";

			foreach( i in _items )
			{
				if (i == null)
				{
					continue;
				}

				if (i.isItemType(this.Const.Items.ItemType.Shield))
				{
					isShield = true;
					shieldID = i.getID();
				}

				if (i.isItemType(this.Const.Items.ItemType.Ammo))
				{
					ammoItemsCount++;
				}

				if (i.isItemType(this.Const.Items.ItemType.TwoHanded) && i.isItemType(this.Const.Items.ItemType.MeleeWeapon))
				{
					twoHandedItemsCount++;
				}

				if (i.isItemType(this.Const.Items.ItemType.Tool))
				{
					toolItemsCount++;
				}
			}

			if (ammoItemsCount >= 2 && this.m.Actor.getSkills().hasSkill("perk.ptr_target_practice"))
			{
				return 0;
			}

			local offhandTrainingPerk = this.m.Actor.getSkills().getSkillByID("perk.ptr_offhand_training");
			if (offhandTrainingPerk != null && !offhandTrainingPerk.m.IsSpent)
			{
				if (toolItemsCount == 2 || (toolItemsCount == 1 && !isShield))
				{
					return 0;
				}

				if (isShield && (shieldID.find("buckler") != null || shieldID.find("parrying_dagger") != null) && toolItemsCount == 1)
				{
					return 0;
				}
			}

			if (isShield || twoHandedItemsCount >= 2)
			{
				return this.Const.Tactical.Settings.SwitchItemAPCost;
			}

			local quickHandsPerk = this.m.Actor.getSkills().getSkillByID("perk.quick_hands");
			if (quickHandsPerk != null && !quickHandsPerk.m.IsSpent)
			{
				return 0;
			}

			if (oneHandedItemsCount >= 2)
			{
				local weaponMasterPerk = this.m.Actor.getSkills().getSkillByID("perk.ptr_weapon_master");
				if (weaponMasterPerk != null && !weaponMasterPerk.m.IsSpent)
				{
					return 0;
				}
			}

			return this.Const.Tactical.Settings.SwitchItemAPCost;
		}

		o.payForAction = function ( _items )
		{
			local actionCost = this.getActionCost(_items);
			this.m.Actor.setActionPoints(this.Math.max(0, this.m.Actor.getActionPoints() - actionCost));

			local procQuickHands = false;

			local ammoItemsCount = 0;
			foreach( i in _items )
			{
				if (i == null)
				{
					continue;
				}

				if (i.isItemType(this.Const.Items.ItemType.Ammo))
				{
					ammoItemsCount++;
				}
			}

			if (ammoItemsCount < 2)
			{
				procQuickHands = true;
			}

			if (procQuickHands)
			{
				local quickHandsPerk = this.m.Actor.getSkills().getSkillByID("perk.quick_hands");
				if (quickHandsPerk != null)
				{
					quickHandsPerk.m.IsSpent = true;
				}

				local weaponMasterPerk = this.m.Actor.getSkills().getSkillByID("perk.ptr_weapon_master");
				if (weaponMasterPerk != null)
				{
					weaponMasterPerk.m.IsSpent = true;
				}

				local offhandTrainingPerk = this.m.Actor.getSkills().getSkillByID("perk.ptr_offhand_training");
				if (offhandTrainingPerk != null)
				{
					offhandTrainingPerk.m.IsSpent = true;
				}
			}
			
			# local isShield = false;
			# local ammoItemsCount = 0;
			# local twoHandedItemsCount = 0;
			#
			# foreach( i in _items )
			# {
			# 	if (i == null)
			# 	{
			# 		continue;
			# 	}
			#
			# 	if (i != null && i.isItemType(this.Const.Items.ItemType.Shield))
			# 	{
			# 		isShield = true;
			# 		break;
			# 	}
			#
			# 	if (i.isItemType(this.Const.Items.ItemType.Ammo))
			# 	{
			# 		ammoItemsCount++;
			# 	}
			#
			# 	if (i.isItemType(this.Const.Items.ItemType.TwoHanded) && i.isItemType(this.Const.Items.ItemType.MeleeWeapon))
			# 	{
			# 		twoHandedItemsCount++;
			# 	}
			# }
			#
			# if (ammoItemsCount >= 2 && this.m.Actor.getSkills().hasSkill("perk.ptr_target_practice"))
			# {
			# 	return;
			# }
			#
			# if (isShield || twoHandedItemsCount >= 2)
			# {
			# 	this.m.Actor.setActionPoints(this.Math.max(0, this.m.Actor.getActionPoints() - this.m.ActionCost2H));
			# }
			# else
			# {
			# 	this.m.Actor.setActionPoints(this.Math.max(0, this.m.Actor.getActionPoints() - this.m.ActionCost));
			# 	this.m.ActionCost = this.Const.Tactical.Settings.SwitchItemAPCost;
			# }

			this.m.Actor.getSkills().update();
		}

		local onNewRound = o.onNewRound;
		o.onNewRound = function()
		{
			onNewRound();
			this.m.ActionCost = this.Const.Tactical.Settings.SwitchItemAPCost;
		}
	});
}
