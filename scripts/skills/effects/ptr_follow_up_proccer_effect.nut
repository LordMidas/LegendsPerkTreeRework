this.ptr_follow_up_proccer_effect <- this.inherit("scripts/skills/skill", {
	m = {
		SkillCount = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_follow_up_proccer";
		this.m.Name = "";
		this.m.Description = "";
		this.m.Icon = "ui/perks/ptr_follow_up.png";
		//this.m.IconMini = "perk_01_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsHidden = true;
		this.m.IsRemovedAfterBattle = false;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_skill.isAttack() || _skill.isRanged())
		{
			return;
		}

		local actor = this.getContainer().getActor();
		if (_targetEntity == null || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}

		if (actor.getSkills().hasSkill("effects.ptr_follow_up"))
		{
			return;
		}

		if (this.m.SkillCount == this.Const.SkillCounter)
		{
			return;
		}

		this.m.SkillCount = this.Const.SkillCounter;

		local actors = _targetEntity.getActorsWithinDistanceAsArray(2, this.Const.FactionRelation.Enemy)
		foreach (ally in actors)
		{
			if (!ally.hasZoneOfControl() || !ally.isAlliedWith(actor))
			{
				continue;
			}

			local allySkill = ally.getSkills().getSkillByID("effects.ptr_follow_up");
			if (allySkill != null && allySkill.canFollowUp())
			{
				local attack = allySkill.getContainer().getAttackOfOpportunity();
				if (attack != null)
				{
					if (!ally.isHiddenToPlayer() || _targetEntity.getTile().IsVisibleForPlayer)
					{
						allySkill.getContainer().setBusy(true)
						this.Time.scheduleEvent(this.TimeUnit.Virtual, 200, function ( _skillToUse )
						{
							if (_targetEntity.isAlive())
							{
								_skillToUse.useForFree(_targetEntity.getTile());
								allySkill.m.ProcCount++;
							}
							_skillToUse.getContainer().setBusy(false);
						}.bindenv(attack), attack);
					}
					else
					{
						if (_targetEntity.isAlive())
						{
							attack.useForFree(_targetEntity.getTile());
							allySkill.m.ProcCount++;
						}
					}
				}
			}
		}
	}
});
