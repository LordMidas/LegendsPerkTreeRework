this.perk_ptr_deep_impact <- this.inherit("scripts/skills/skill", {
	m = {
		ArmorEffectivenessMult = 0.25
	},
	function create()
	{
		this.m.ID = "perk.ptr_deep_impact";
		this.m.Name = this.Const.Strings.PerkName.PTRDeepImpact;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDeepImpact;
		this.m.Icon = "ui/perks/ptr_deep_impact.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (!_skill.isAttack() || !_skill.hasBluntDamage())
		{
			return;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null)
		{
			return;
		}

		_properties.ThresholdToInflictInjuryMult *= 1.0 - (this.m.ArmorEffectivenessMult * weapon.getArmorDamageMult());
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		if (!_skill.hasBluntDamage())
		{
			return;
		}

		local targetFlags = _targetEntity.getFlags();

		if (!flags.has("undead"))
		{
			return;
		}

		foreach (flag in this.Const.Injury.PTRForceUndeadInjuryExemptFlags)
		{
			if (targetFlags.has(flag))
			{
				return;
			}
		}

		_hitInfo.Injuries = this.Const.Injury.getArrayOfRelevantUndeadInjuries(_skill, _targetEntity, _hitInfo);
	}
});
