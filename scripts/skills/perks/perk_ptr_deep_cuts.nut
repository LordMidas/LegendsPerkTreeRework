this.perk_ptr_deep_cuts <- this.inherit("scripts/skills/skill", {
	m = {
    TargetID = 0,
		NumInjuriesBefore = 0,
		InjuryThresholdReduction = 33
	},
	function create()
	{
		this.m.ID = "perk.ptr_deep_cuts";
		this.m.Name = this.Const.Strings.PerkName.PTRDeepCuts;
		this.m.Description = "This character is prepared to deal a particularly deep cut on %their% next attack against the same target.";
		this.m.Icon = "ui/perks/ptr_deep_cuts.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		local e = this.Tactical.getEntityByID(this.m.TargetID);
		if (e != null && e.isAlive())
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "The next attack this turn against [color=" + this.Const.UI.Color.NegativeValue + "]+" + e.getName() + "[/color] has a [color=" + this.Const.UI.Color.NegativeValue + "]" + this.m.InjuryThresholdReduction + "%[/color] lower threshold to inflict injury"
			});
		}

		return tooltip;
	}

  function onTurnStart()
  {
    this.m.TargetID = 0;
  }

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		if (this.m.TargetID == _targetEntity.getID())
    {
      return;
    }
    else
    {
      this.m.NumInjuriesBefore = _targetEntity.getSkills().getAllSkillsOfType(this.Const.SkillType.TemporaryInjury).len();
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (this.m.TargetID == _targetEntity.getID() && _skill.isAttack() && _skill.hasDamageType(this.Const.Damage.DamageType.Cutting))
		{
			_properties.ThresholdToInflictInjuryMult *= this.m.InjuryThresholdReduction * 0.01;
		}
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_skill.isAttack() || !_skill.hasDamageType(this.Const.Damage.DamageType.Cutting) || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.getCurrentProperties().IsImmuneToBleeding || _damageInflictedHitpoints < this.Const.Combat.MinDamageToApplyBleeding)
		{
			return;
		}

		if (this.m.TargetID == _targetEntity.getID())
    {
      this.m.TargetID = 0;
    }
    else
    {
      this.m.TargetID = _targetEntity.getID();
      return;
    }

		local actor = this.getContainer().getActor();
    local effect = this.new("scripts/skills/effects/bleeding_effect");

    if (actor.getFaction() == this.Const.Faction.Player)
    {
      effect.setActor(this.getContainer().getActor());
    }

    if (_targetEntity.getSkills().getAllSkillsOfType(this.Const.SkillType.TemporaryInjury).len() > this.m.NumInjuriesBefore)
		{
			effect.setDamage(10);
		}

    _targetEntity.getSkills().add(effect);
	}
});
