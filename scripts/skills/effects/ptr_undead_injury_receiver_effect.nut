this.ptr_undead_injury_receiver_effect <- this.inherit("scripts/skills/skill", {
	m = {
		ReceiveInjuries = true
	},
	function create()
	{
		this.m.ID = "effects.ptr_undead_injury_receiver";
		this.m.Name = "";
		this.m.Description = "";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.StatusEffect;
		this.m.IsActive = false;
		this.m.IsHidden = true;
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		this.m.ReceiveInjuries = false;

		if (_skill.hasDamageType(this.Const.Damage.DamageType.Cutting))
		{
			local dismemberment = _attacker.getSkills().getSkillByID("perk.ptr_dismemberment");
			if (dismemberment != null && dismemberment.isEnabled())
			{
				this.m.ReceiveInjuries = true;
				return;
			}
		}

		if (_skill.hasDamageType(this.Const.Damage.DamageType.Blunt))
		{
			local deepImpact = _attacker.getSkills().getSkillByID("perk.ptr_deep_impact");
			if (deepImpact != null && deepImpact.isEnabled())
			{
				this.m.ReceiveInjuries = true;
				return;
			}
		}
	}

	function onAfterDamageReceived()
	{
		this.m.ReceiveInjuries = true;
	}

	function onUpdate ( _properties )
	{
		if (this.m.ReceiveInjuries)
		{
			_properties.IsAffectedByInjuries = true;
			_properties.IsAffectedByFreshInjuries = true;
		}
	}
});
