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

			foreach( i in _items )
			{
				if (i == null)
				{
					continue;
				}

				if (i.isItemType(this.Const.Items.ItemType.Shield))
				{
					isShield = true;
					break;
				}

				if (i.isItemType(this.Const.Items.ItemType.Ammo))
				{
					ammoItemsCount++;
				}

				if (i.isItemType(this.Const.Items.ItemType.TwoHanded) && i.isItemType(this.Const.Items.ItemType.MeleeWeapon))
				{
					twoHandedItemsCount++;
				}
			}

			if (ammoItemsCount >= 2 && this.m.Actor.getSkills().hasSkill("perk.ptr_target_practice"))
			{
				return 0;
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

			return this.Const.Tactical.Settings.SwitchItemAPCost;
		}

		o.payForAction = function ( _items )
		{
			local actionCost = this.getActionCost(_items);
			this.m.Actor.setActionPoints(this.Math.max(0, this.m.Actor.getActionPoints() - actionCost));
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
				local quickHandsPerk = this.m.Actor.getSkills().getSkillByID("perk.quick_hands");
				if (quickHandsPerk != null)
				{
					quickHandsPerk.m.IsSpent = true;
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
