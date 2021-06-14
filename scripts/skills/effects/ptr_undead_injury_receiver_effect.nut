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
		this.m.IsRemovedAfterBattle = true;
	}

	function IsInEffect()
	{
		local flags = this.getContainer().getActor().getFlags();

		if (!flags.has("undead"))
		{
			return false;
		}

		foreach (flag in this.Const.PTR.Injuries.ForceUndeadInjuryExemptFlags)
		{
			if (flags.has(flag))
			{
				return false;
			}
		}

		return true;
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (!this.IsInEffect())
		{
			return;
		}

		this.m.ReceiveInjuries = false;
		local attackerSkills = _attacker.getSkills();
		if ((attackerSkills.hasSkill("perk.ptr_dismemberment") && _skill.hasCuttingDamage()) ||
				(attackerSkills.hasSkill("perk.ptr_deep_impact") && _skill.hasBluntDamage())
			 )
		{
			this.m.ReceiveInjuries = true;
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
