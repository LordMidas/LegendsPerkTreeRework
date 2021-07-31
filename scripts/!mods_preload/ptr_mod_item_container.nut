local gt = this.getroottable();

gt.Const.PTR.modItemContainer <- function()
{
	::mods_hookNewObject("items/item_container", function(o) {
		o.isActionAffordable = function ( _items )
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
				return true;
			}

			if (isShield || twoHandedItemsCount >= 2)
			{
				return this.m.Actor.getActionPoints() >= this.m.ActionCost2H;
			}

			return this.m.Actor.getActionPoints() >= this.m.ActionCost;
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

				if (i.isItemType(this.Const.Items.ItemType.Ammo))
				{
					ammoItemsCount++;
				}

				if (i.isItemType(this.Const.Items.ItemType.Shield))
				{
					isShield = true;
					break;
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
				return this.m.ActionCost2H;
			}

			return this.m.ActionCost;
		}

		o.payForAction = function ( _items )
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

				if (i != null && i.isItemType(this.Const.Items.ItemType.Shield))
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
				return;
			}

			if (isShield || twoHandedItemsCount >= 2)
			{
				this.m.Actor.setActionPoints(this.Math.max(0, this.m.Actor.getActionPoints() - this.m.ActionCost2H));
			}
			else
			{
				this.m.Actor.setActionPoints(this.Math.max(0, this.m.Actor.getActionPoints() - this.m.ActionCost));
				this.m.ActionCost = this.Const.Tactical.Settings.SwitchItemAPCost;
			}

			this.m.Actor.getSkills().update();
		}
	});
}
