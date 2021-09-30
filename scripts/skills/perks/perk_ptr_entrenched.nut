this.perk_ptr_entrenched <- this.inherit("scripts/skills/skill", {
	m = {
		Bonus = 7,
		MaxBonus = 15,
		TurnsEntrenched = 0,
		IsSpent = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_entrenched";
		this.m.Name = this.Const.Strings.PerkName.PTREntrenched;
		this.m.Description = "This character\'s confidence in combat is increased due to support from adjacent allies.";
		this.m.Icon = "ui/perks/ptr_entrenched.png";
		this.m.IconMini = "ptr_entrenched_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getName()
	{
		return this.m.TurnsEntrenched > 0 ? this.m.Name + "(x" + this.m.TurnsEntrenched + " Turns)" : this.m.Name;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		local bonus = this.getBonus();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + bonus + "[/color] Ranged Skill"
		});
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + bonus + "[/color] Ranged Defense"
		});
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/bravery.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + bonus + "[/color] Resolve"
		});

		return tooltip;
	}

	function isEnabled()
	{
		if (!this.getContainer().getActor().isPlacedOnMap())
		{
			return false;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isItemType(this.Const.Items.ItemType.RangedWeapon))
		{
			return false;
		}

		local isValid = false;
		local adjacentAllies = this.getContainer().getActor().getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.SameFaction);
		foreach (ally in adjacentAllies)
		{
			if (!ally.isEngagedInMelee() && ally.hasZoneOfControl())
			{
				isValid = true;
				break;
			}
		}

		return isValid;
	}

	function getBonus()
	{
		return this.Math.max(0, this.Math.min(this.m.MaxBonus, this.m.Bonus + (this.m.TurnsEntrenched - 1) * 2));
	}

	function onUpdate( _properties )
	{
		this.m.IsHidden = true;

		if (this.isEnabled())
		{
			this.m.IsHidden = false;
			local bonus = this.getBonus();
			_properties.RangedSkill += bonus;
			_properties.RangedDefense += bonus;
			_properties.Bravery += bonus;
		}
		else
		{
			this.m.TurnsEntrenched = 0;
		}
	}

	function getItemActionCost( _items )
	{
		if (this.m.IsSpent || !this.isEnabled())
		{
			return null;
		}

		local rangedCount = 0;

		foreach (item in _items)
		{
			if (item == null)
			{
				continue;
			}

			if (item.getSlotType() == this.Const.ItemSlot.Mainhand && item.isItemType(this.Const.Items.ItemType.RangedWeapon))
			{
				rangedCount++;
			}
		}

		if (rangedCount == 2)
		{
			return 0;
		}

		return null;
	}

	function onPayForItemAction( _skill, _items )
	{
		if (_skill != null && _skill.getID() == "perk.ptr_target_practice")
		{
			return;
		}

		this.m.IsSpent = true;
	}

	function onTurnStart()
	{
		if (this.isEnabled())
		{
			this.m.TurnsEntrenched++;
		}
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.TurnsEntrenched = 0;		
	}
});
