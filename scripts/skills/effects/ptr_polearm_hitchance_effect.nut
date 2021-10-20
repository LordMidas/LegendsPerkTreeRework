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

	function isEnabled()
	{
		local weapon = this.getContainer().getActor().getMainhandItem()
		if (weapon != null && weapon.m.RangeMax == 2 && !weapon.isWeaponType(this.Const.Items.WeaponType.Staff))
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
		if (_targetEntity == null || _skill.getMaxRange() == 1 || !this.isEnabled())
		{
			return;
		}

		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}

		local distance = this.getContainer().getActor().getTile().getDistanceTo(_targetEntity.getTile());
		if (distance == 1)
		{
			_properties.MeleeSkill += this.getMalus();
		}
	}
});
