this.perk_ptr_dismemberment <- this.inherit("scripts/skills/skill", {
	m = {
		PercentageOfMaximumDamage = 35,
		IsForceEnabled = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_dismemberment";
		this.m.Name = this.Const.Strings.PerkName.PTRDismemberment;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDismemberment;
		this.m.Icon = "ui/perks/ptr_dismemberment.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.VeryLast;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isEnabled()
	{
		return true;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill.isAttack() && (_skill.hasDamageType(this.Const.Damage.DamageType.Cutting) || this.m.IsForceEnabled) && this.isEnabled())
		{
			_properties.ThresholdToInflictInjuryMult *= 1.0 - (this.m.PercentageOfMaximumDamage * 0.01 * _properties.getDamageRegularMax());
		}
	}

	# function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	# {
	# 	if (!_skill.hasDamageType(this.Const.Damage.DamageType.Cutting) || !_targetEntity.getFlags().has("undead"))
	# 	{
	# 		return;
	# 	}
	#
	# 	_hitInfo.Injuries = this.Const.Injury.getArrayOfRelevantUndeadInjuries(_skill, _targetEntity, _hitInfo);
	# }
});
