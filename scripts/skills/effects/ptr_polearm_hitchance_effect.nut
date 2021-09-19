this.ptr_polearm_hitchance_effect <- this.inherit("scripts/skills/skill", {
	m = {
		HitChanceMalusAdjacent = -15
	},
	function create()
	{
		this.m.ID = "effects.ptr_polearm_hitchance";
		this.m.Name = "";
		this.m.Description = "";
		this.m.Icon = "";		
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = true;
	}

	function isEnabledForWeapon( _weapon )
	{
		if (_weapon != null && _weapon.m.RangeMax == 2 && !_weapon.isWeaponType(this.Const.Items.WeaponType.Staff))
		{
			return true;
		}

		return false;
	}

	function getMalus()
	{
		return this.m.HitChanceMalusAdjacent;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !this.isEnabledForWeapon(this.getContainer().getActor().getMainhandItem()))
		{
			return;
		}

		local distance = this.getContainer().getActor().getTile().getDistanceTo(_targetEntity.getTile());
		if (distance == 1)
		{
			_properties.MeleeSkill -= this.getMalus();
		}
	}
});
