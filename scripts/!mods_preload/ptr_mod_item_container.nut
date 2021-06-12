local gt = this.getroottable();

gt.Const.PTR.modSkill <- function()
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

			foreach( i in _items )
			{
				if (i != null && i.isItemType(this.Const.Items.ItemType.Ammo) && this.m.Actor.getSkills().hasSkill("perk.ptr_target_practice"))
				{
					return;
				}
			}

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

			this.m.Actor.getSkills().update();
		}



		::mods_override(o, "getHitFactors", function(_targetTile)
		{
			local ret = oldgetHitFactors(_targetTile);

			//local user = this.m.Container.getActor();
			//local myTile = user.getTile();
			local targetEntity = _targetTile.IsOccupiedByActor ? _targetTile.getEntity() : null;

			if (targetEntity != null && !targetEntity.isArmedWithShield() && this.getContainer().hasSkill("perk.ptr_pointy_end") && this.isAttack() && !this.isRanged() && this.hasPiercingDamage())
			{
				ret.push({
					icon = "ui/tooltips/positive.png",
					text = "Pointy End"
				});
			}

			if (targetEntity != null && targetEntity.isArmedWithRangedWeapon() && this.getContainer().hasSkill("perk.ptr_ranged_supremacy") && this.isAttack() && this.isRanged())
			{
				ret.push({
					icon = "ui/tooltips/positive.png",
					text = "Ranged Supremacy"
				});
			}

			return ret;
		});
	});
}
