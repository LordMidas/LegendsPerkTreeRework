this.perk_ptr_deep_cuts <- this.inherit("scripts/skills/skill", {
	m = {
    TargetID = -1,
		NumInjuriesBefore = 0
	},
	function create()
	{
		this.m.ID = "perk.ptr_deep_cuts";
		this.m.Name = this.Const.Strings.PerkName.PTRDeepCuts;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDeepCuts;
		this.m.Icon = "ui/perks/ptr_deep_cuts.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

  function onTurnStart()
  {
    this.m.TargetID = -1;
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

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_skill.isAttack() || !_skill.hasCuttingDamage() || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.getCurrentProperties().IsImmuneToBleeding || _damageInflictedHitpoints < this.Const.Combat.MinDamageToApplyBleeding)
		{
			return;
		}

		if (this.m.TargetID == _targetEntity.getID())
    {
      this.m.TargetID = -1;
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

    local skillID = _skill.getID();
    if (_targetEntity.getSkills().getAllSkillsOfType(this.Const.SkillType.TemporaryInjury).len() > this.m.NumInjuriesBefore)
		{
			effect.setDamage(10);
		}

    _targetEntity.getSkills().add(effect);
	}
});
