this.perk_ptr_deep_impact <- this.inherit("scripts/skills/skill", {
	m = {
		ArmorEffectivenessMult = 0.25,
		IsForceEnabled = false
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

	function isEnabled(_skill)
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		if(!_skill.hasBluntDamage())
		{
			return false;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null)
		{
			return false;
		}

		return true;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (!_skill.isAttack() || !this.isEnabled(_skill))
		{
			return;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		_properties.ThresholdToInflictInjuryMult *= 1.0 - (this.m.ArmorEffectivenessMult * weapon.getArmorDamageMult());
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		if (!_skill.isAttack() || !this.isEnabled(_skill) || !_targetEntity.getFlags().has("undead"))
		{
			return;
		}

		_hitInfo.Injuries = this.Const.Injury.getArrayOfRelevantUndeadInjuries(_skill, _targetEntity, _hitInfo);
	}
});
