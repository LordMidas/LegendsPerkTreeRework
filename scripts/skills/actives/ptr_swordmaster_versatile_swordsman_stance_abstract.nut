this.ptr_swordmaster_versatile_swordsman_stance_abstract <- this.inherit("scripts/skills/actives/ptr_swordmaster_active_abstract", {
	m = {
		IsOn = false
	},
	function create()
	{
		this.ptr_swordmaster_active_abstract.create();
		this.m.IsWeaponSkill = true;
		this.m.ActionPointCost = 3;
	}

	function onAdded()
	{
		this.toggleOff();
	}

	function isHidden()
	{
		return !this.isEnabled();
	}

	function onVerifyTarget( _originTile, _targetTile )
	{
		return true;
	}

	function toggleOn()
	{
		this.m.IsOn = true;
		this.m.Icon = this.m.IconOn;
		foreach (skill in this.getContainer().getSkillsByFunction(@(skill) ::MSU.isKindOf(skill, "ptr_swordmaster_versatile_swordsman_stance_abstract")))
		{
			if (skill != this) skill.toggleOff();
		}
	}

	function toggleOff()
	{
		this.m.IsOn = false;
		this.m.Icon = this.m.IconOff;
	}

	function onUse( _user, _targetTile )
	{
		if (this.m.IsOn) this.toggleOff();
		else this.toggleOn();
		return true;
	}
});
