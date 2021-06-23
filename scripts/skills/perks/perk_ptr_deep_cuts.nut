this.perk_ptr_deep_cuts <- this.inherit("scripts/skills/skill", {
	m = {
    TargetID = -1,
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

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_skill.isAttack() || !_targetEntity.isAlive() || _damageInflictedHitpoints < this.Const.Combat.MinDamageToApplyBleeding || !_skill.hasCuttingDamage())
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
    if (skillID == "actives.cleave" || skillID == "actives.whip")
    {
      effect.setDamage(actor.getCurrentProperties().IsSpecializedInCleavers ? 10 : 5);
    }
    else if (skillID == "actives.hyena_bite_skill")
    {
      effect.setDamage(actor.isHigh() ? 10 : 5);
    }

    _targetEntity.getSkills().add(effect);
	}
});
