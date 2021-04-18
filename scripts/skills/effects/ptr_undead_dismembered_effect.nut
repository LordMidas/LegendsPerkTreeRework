this.ptr_undead_dismembered_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_undead_dismembered";
		this.m.Name = "Dismembered";
		this.m.Description = "This character\'s body parts have been dismembered by cutting attacks.";
		this.m.Icon = "ui/perks/ptr_dismemberment.png";
		//this.m.IconMini = "ptr_undead_dismembered_effect_mini";
		this.m.Overlay = "ptr_undead_dismembered_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsHidden = false;
	}
	
	// function isHidden()
	// {
		// return !this.getContainer().hasSkillOfType(this.Const.SkillType.TemporaryInjury);
	// }

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (_attacker.getSkills().hasSkill("perk.ptr_dismemberment") && _skill.isAttack() && _skill.hasCuttingDamage())
		{
			_properties.IsAffectedByInjuries = true;
			_properties.IsAffectedByFreshInjuries = true;
			this.logInfo("check passed and " + _attacker.getName() + " uses skill " + _skill.getID() + " and target " + this.getContainer().getActor().getName() + " is now set to be affected by injuries and fresh injuries: " + _properties.IsAffectedByInjuries + ", " + _properties.IsAffectedByFreshInjuries);
		}
		else
		{
			_properties.IsAffectedByInjuries = false;
			_properties.IsAffectedByFreshInjuries = false;
			this.logInfo("check failed and " + _attacker.getName() + " uses skill " + _skill.getID() + " and target " + this.getContainer().getActor().getName() + " is now set to be affected by injuries and fresh injuries: " + _properties.IsAffectedByInjuries + ", " + _properties.IsAffectedByFreshInjuries);
		}  
	}

	function onUpdate( _properties )
	{
		if (this.getContainer().hasSkillOfType(this.Const.SkillType.TemporaryInjury))
		{
			_properties.IsAffectedByInjuries = true;
			_properties.IsAffectedByFreshInjuries = true;
		}
	}
});

