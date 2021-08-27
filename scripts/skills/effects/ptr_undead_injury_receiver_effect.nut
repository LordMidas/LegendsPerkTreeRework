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
		this.m.Order = this.Const.SkillOrder.VeryLast;
		this.m.IsActive = false;
		this.m.IsHidden = true;
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		this.m.ReceiveInjuries = false;

		if (_skill.hasDamageType(this.Const.Damage.DamageType.Cutting))
		{
			local dismemberment = attackerSkills.getSkillByID("perk.ptr_dismemberment");
			if (dismemberment == null || !dismemberment.isEnabled())
			{
				return;
			}
		}

		if (_skill.hasDamageType(this.Const.Damage.DamageType.Blunt))
		{
			local deepImpact = attackerSkills.getSkillByID("perk.ptr_deep_impact");
			if (deepImpact == null || !deepImpact.isEnabled())
			{
				return;
			}
		}

		this.m.ReceiveInjuries = true;
	}

	# function onAfterDamageReceived()
	# {
	# 	this.m.ReceiveInjuries = true;
	# }

	function onUpdate ( _properties )
	{
		if (this.m.ReceiveInjuries)
		{
			_properties.IsAffectedByInjuries = true;
			_properties.IsAffectedByFreshInjuries = true;
		}
	}
});
