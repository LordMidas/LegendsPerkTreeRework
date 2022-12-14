::mods_hookExactClass("skills/perks/perk_coup_de_grace", function(o) {
	o.onAnySkillUsed = function ( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !_skill.isAttack())
		{
			return;
		}

		if (_targetEntity.getSkills().hasSkillOfType(this.Const.SkillType.TemporaryInjury))
		{
			_properties.DamageTotalMult *= 1.2;
		}

		if (_targetEntity.getSkills().hasSkill("effects.stunned") || _targetEntity.getSkills().hasSkill("effects.net") || _targetEntity.getSkills().hasSkill("effects.sleeping") || _targetEntity.getSkills().hasSkill("effects.debilitated"))
		{
			_properties.DamageTotalMult *= 1.2;
		}
	}
});
