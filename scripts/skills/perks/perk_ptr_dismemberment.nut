this.perk_ptr_dismemberment <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_dismemberment";
		this.m.Name = this.Const.Strings.PerkName.PTRDismemberment;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDismemberment;
		this.m.Icon = "ui/perks/ptr_dismemberment.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill.isAttack() && _skill.hasCuttingDamage())
		{
			_properties.ThresholdToInflictInjuryMult *= 0.85;
		}
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		if (!_skill.hasCuttingDamage())
		{
			return;
		}

		local targetFlags = _targetEntity.getFlags();

		if (!flags.has("undead"))
		{
			return;
		}

		foreach (flag in this.Const.PTR.Injuries.ForceUndeadInjuryExemptFlags)
		{
			if (targetFlags.has(flag))
			{
				return;
			}
		}

		if (bodyPart == this.Const.BodyPart.Body && _skill.m.InjuriesOnBody != null)
		{
			injuries = this.Const.PTR.Injuries.InjuriesOnBodySkeleton;
			if (!targetFlags.has("skeleton"))
			{
				injuries.extend(this.Const.PTR.Injuries.InjuriesOnBodyUndead);
			}
		}
		else if (bodyPart == this.Const.BodyPart.Head && _skill.m.InjuriesOnHead != null)
		{
			injuries = this.Const.PTR.Injuries.InjuriesOnHeadUndead;
			if (!targetFlags.has("skeleton"))
			{
				injuries.extend(this.Const.PTR.Injuries.InjuriesOnHeadUndead);
			}
		}

		_hitInfo.Injuries = injuries;
	}
});
