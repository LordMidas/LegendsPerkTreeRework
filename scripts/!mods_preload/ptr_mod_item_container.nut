local gt = this.getroottable();

gt.Const.PTR.modItemContainer <- function()
{
	::mods_hookNewObject("items/item_container", function(o) {
		local isActionAffordable = o.isActionAffordable;
		o.isActionAffordable = function ( _items )
		{
			local ret = isActionAffordable(_items);

			if (!ret)
			{
				foreach (i in _items)
				{
					if (i != null && i.isItemType(this.Const.Items.ItemType.Ammo) && this.m.Actor.getSkills().hasSkill("perk.ptr_target_practice"))
					{
						ret = true;
						break;
					}
				}
			}

			return ret;
		}

		local getActionCost = o.getActionCost;
		o.getActionCost = function ( _items )
		{
			local ret = getActionCost(_items);

			if (ret != 0)
			{
				foreach (i in _items)
				{
					if (i != null && i.isItemType(this.Const.Items.ItemType.Ammo) && this.m.Actor.getSkills().hasSkill("perk.ptr_target_practice"))
					{
						ret = 0;
						break;
					}
				}
			}

			return ret;
		}

		o.payForAction = function ( _items )
		{
			local twoHanded = false;

			local freeForAmmo = false;

			foreach( i in _items )
			{
				if (i != null && i.isItemType(this.Const.Items.ItemType.Ammo) && this.m.Actor.getSkills().hasSkill("perk.ptr_target_practice"))
				{
					freeForAmmo = true;
					break;
				}
			}

			if (!freeForAmmo)
			{
				foreach( i in _items )
				{
					if (i != null && i.isItemType(this.Const.Items.ItemType.Shield))
					{
						twoHanded = true;
						break;
					}
				}

				this.m.Actor.setActionPoints(this.Math.max(0, this.m.Actor.getActionPoints() - (twoHanded ? this.m.ActionCost2H : this.m.ActionCost)));

				if (!twoHanded)
				{
					this.m.ActionCost = this.Const.Tactical.Settings.SwitchItemAPCost;
				}
			}

			this.m.Actor.getSkills().update();
		}
	});
}
