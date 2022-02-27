local gt = this.getroottable();

gt.MSU.modSkills <- function ()
{
	::mods_hookExactClass("skills/effects/possessed_undead_effect", function(o) {
		o.m.PerksAdded <- [];
		local onAdded = o.onAdded;
		o.onAdded = function()
		{
			onAdded();
			local weapon = this.getContainer().getActor().getMainhandItem();
			if (weapon == null)
			{
				return;
			}

			local trees = [];

			if (weapon.isWeaponType(this.Const.Items.WeaponType.Axe))
			{
				trees.push(this.Const.Perks.AxeTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Bow))
			{
				trees.push(this.Const.Perks.BowTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Cleaver))
			{
				trees.push(this.Const.Perks.CleaverTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Crossbow))
			{
				trees.push(this.Const.Perks.CrossbowTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Dagger))
			{
				trees.push(this.Const.Perks.DaggerTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Flail))
			{
				trees.push(this.Const.Perks.FlailTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Hammer))
			{
				trees.push(this.Const.Perks.HammerTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Mace))
			{
				trees.push(this.Const.Perks.MaceTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Polearm))
			{
				trees.push(this.Const.Perks.PolearmTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Sling))
			{
				trees.push(this.Const.Perks.SlingsTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Spear))
			{
				trees.push(this.Const.Perks.SpearTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Sword))
			{
				trees.push(this.Const.Perks.SwordTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Staff))
			{
				trees.push(this.Const.Perks.StavesTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Throwing))
			{
				trees.push(this.Const.Perks.ThrowingTree);
			}

			if (trees.len() == 0)
			{
				return;
			}

			local tree = trees[this.Math.rand(0, trees.len() - 1)];
			local maxTier = this.Math.min(7, this.World.getTime().Days / 20);

			for (local i = 0; i < maxTier; i++)
			{
				foreach (perk in tree.Tree[i])
				{
					local perkDefObject = this.Const.Perks.PerkDefObjects[perk];
					if (!this.getContainer().hasSkill(perkDefObject.ID))
					{
						local perk = this.new(perkDefObject.Script); 
						this.getContainer().add(perk);
						this.m.PerksAdded.push(perk);
					}
				}
			}
		}

		local onRemoved = o.onRemoved;
		o.onRemoved = function()
		{
			onRemoved();
			foreach (perk in this.m.PerksAdded)
			{
				perk.removeSelf();
			}
		}
	});

	::mods_hookExactClass("skills/items/generic_item", function(o) {
		o.onAfterUpdate <- function( _properties )
		{
			if (this.m.Item != null)
			{
				if (typeof this.m.Item == "instance")
				{
					this.m.Item = this.m.Item.get();
				}
				this.m.Item.onAfterUpdateProperties(_properties);
			}
			else
			{
				this.removeSelf();
			}
		}
	});
	
	::mods_hookExactClass("skills/perks/perk_quick_hands", function(o) {
		o.m.IsSpent <- false;
		o.m.ItemActionOrder <- this.Const.ItemActionOrder.Any;

		o.onUpdate = function(_properties)
		{
		}

		o.onCombatStarted = function()
		{
		}

		o.onCombatFinished = function()
		{
			this.skill.onCombatFinished();
		}


		o.isHidden <- function()
		{
			return this.m.IsSpent;
		}

		o.getItemActionCost <- function(_items)
		{
			return this.m.IsSpent ? null : 0;
		}

		o.onPayForItemAction <- function(_skill, _items)
		{
			if (_skill == this)
			{
				this.m.IsSpent = true;
			}
		}

		o.onTurnStart <- function()
		{
			this.m.IsSpent = false;
		}
	});
}
