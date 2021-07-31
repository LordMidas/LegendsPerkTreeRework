this.perk_ptr_weapon_master <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_weapon_master";
		this.m.Name = this.Const.Strings.PerkName.PTRWeaponMaster;
		this.m.Description = this.Const.Strings.PerkDescription.PTRWeaponMaster;
		this.m.Icon = "ui/perks/ptr_weapon_master.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		local actor = this.getContainer().getActor();
		return this.m.IsSpent || !actor.isPlayerControlled() || !actor.isPlacedOnMap() || !this.isEnabled();
	}

	function getDescription()
	{
		return "This character is a master of One-Handed weapons and can swap one such weapon for another for free once per turn."
	}

	function isEnabled(_properties)
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon) || !weapon.isItemType(this.Const.Items.ItemType.OneHanded))
		{
			return false;
		}

		if (_properties.IsSpecializedInAxes = true ||
				_properties.IsSpecializedInCleavers = true ||
				_properties.IsSpecializedInDaggers = true ||
				_properties.IsSpecializedInFlails = true ||
				_properties.IsSpecializedInHammers = true ||
				_properties.IsSpecializedInMaces = true ||
				_properties.IsSpecializedInSpears = true ||
				_properties.IsSpecializedInSwords = true
			)
		{
			return false;
		}

		return true;
	}

	function onUpdate(_properties)
	{
		if (!this.isEnabled())
		{
			this.m.IsSpent = true;
			return;
		}

		_properties.IsSpecializedInAxes = true;
		_properties.IsSpecializedInCleavers = true;
		_properties.IsSpecializedInDaggers = true;
		_properties.IsSpecializedInFlails = true;
		_properties.IsSpecializedInHammers = true;
		_properties.IsSpecializedInMaces = true;
		_properties.IsSpecializedInSpears = true;
		_properties.IsSpecializedInSwords = true;
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
