this.perk_ptr_weapon_master <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_weapon_master";
		this.m.Name = this.Const.Strings.PerkName.PTRWeaponMaster;
		this.m.Description = "This character is a master of One-Handed weapons and can swap one such weapon for another for free once per turn."
		this.m.Icon = "ui/perks/ptr_weapon_master.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Any;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		local actor = this.getContainer().getActor();
		return this.m.IsSpent || !actor.isPlayerControlled() || !actor.isPlacedOnMap() || !this.isEnabled(actor.getCurrentProperties());
	}

	function getItemActionCost(_items)
	{
		if (this.m.IsSpent)
		{
			return null;
		}

		local oneHandedCount = 0;

		foreach (item in _items)
		{
			if (item == null)
			{
				continue;
			}

			if (item.getSlotType() != this.Const.ItemSlot.Mainhand || !item.isItemType(this.Const.Items.ItemType.MeleeWeapon) || item.isItemType(this.Const.Items.ItemType.TwoHanded))
			{
				return null;
			}

			if (item.isItemType(this.Const.Items.ItemType.OneHanded))
			{
				oneHandedCount++;
			}
		}

		if (oneHandedCount > 0)
		{
			return 0;
		}

		return null;
	}

	function onPayForItemAction(_skill, _items)
	{
		if (_skill.getID() != "perk.ptr_target_practice")
		{
			this.m.IsSpent = true;
		}
	}

	function isEnabled(_properties)
	{
		local weapon = this.getContainer().getActor().getMainhandItem();

		if (weapon == null || !weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon) || !weapon.isItemType(this.Const.Items.ItemType.OneHanded))
		{
			return false;
		}

		if (!_properties.IsSpecializedInAxes &&
			 	!_properties.IsSpecializedInCleavers &&
				!_properties.IsSpecializedInDaggers &&
				!_properties.IsSpecializedInFlails &&
				!_properties.IsSpecializedInHammers &&
				!_properties.IsSpecializedInMaces &&
				!_properties.IsSpecializedInSpears &&
				!_properties.IsSpecializedInSwords
			 )
		{
			return false;
		}

		return true;
	}

	function onUpdate(_properties)
	{
		if (!this.isEnabled(_properties))
		{
			return;
		}

		local actor = this.getContainer().getActor();
		if (actor.isPlayerControlled())
		{
			foreach (perk in actor.getBackground().m.PerkTree[3])
			{
				switch (perk.ID)
				{
					case "perk.mastery.axe":
						_properties.IsSpecializedInAxes = true;
						break;
					case "perk.mastery.cleaver":
						_properties.IsSpecializedInCleavers = true;
						break;
					case "perk.mastery.dagger":
						_properties.IsSpecializedInDaggers = true;
						break;
					case "perk.mastery.flail":
						_properties.IsSpecializedInFlails = true;
						break;
					case "perk.mastery.hammer":
						_properties.IsSpecializedInHammers = true;
						break;
					case "perk.mastery.mace":
						_properties.IsSpecializedInMaces = true;
						break;
					case "perk.mastery.spear":
						_properties.IsSpecializedInSpears = true;
						break;
					case "perk.mastery.sword":
						_properties.IsSpecializedInSwords = true;
						break;
				}
			}
		}
		else
		{
			_properties.IsSpecializedInAxes = true;
			_properties.IsSpecializedInCleavers = true;
			_properties.IsSpecializedInDaggers = true;
			_properties.IsSpecializedInFlails = true;
			_properties.IsSpecializedInHammers = true;
			_properties.IsSpecializedInMaces = true;
			_properties.IsSpecializedInSpears = true;
			_properties.IsSpecializedInSwords = true;
		}
	}

	function onTurnStart()
	{
		this.m.IsSpent = false;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.IsSpent = false;
	}
});
