this.ai_ptr_follow_up <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		Skill = null,
		PossibleSkills = [
			"actives.ptr_follow_up"
		],
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.PTRFollowUp;
		this.m.Order = this.Const.AI.Behavior.Order.PTRFollowUp;
		this.behavior.create();
	}

	function onEvaluate( _entity )
	{
		this.m.Skill = null;
		local score = this.getProperties().BehaviorMult[this.m.ID];

		if (_entity.getActionPoints() < this.Const.Movement.AutoEndTurnBelowAP)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (_entity.getMoraleState() == this.Const.MoraleState.Fleeing)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (!this.getAgent().hasVisibleOpponent())
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.Skill = this.selectSkill(this.m.PossibleSkills);

		if (this.m.Skill == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		local attackSkill = _entity.getSkills().getAttackOfOpportunity();
		if (attackSkill == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		score = score * this.getFatigueScoreMult(this.m.Skill);

		local targets = this.queryTargetsInMeleeRange(attackSkill.getMinRange(), attackSkill.getMaxRange(), this.m.Skill.getMaxLevelDifference());

		local bestTarget = this.queryBestMeleeTarget(_entity, attackSkill, targets);

		if (bestTarget.Target == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		local meleeTarget = bestTarget.Target;

		local attackBehaviorScore = this.getProperties().BehaviorMult[this.Const.AI.Behavior.ID.AttackDefault];
		attackBehaviorScore = attackBehaviorScore * this.getFatigueScoreMult(attackSkill);

		attackBehaviorScore = this.Math.max(0, this.Const.AI.Behavior.Score.Attack * bestTarget.Score * attackBehaviorScore);

		local damage = attackSkill.getExpectedDamage(meleeTarget);

		if (meleeTarget.getHitpoints() <= damage.HitpointDamage + damage.DirectDamage)
		{
			this.logInfo("Can kill " + meleeTarget.getName() + " hence no Follow Up");
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (damage.HitpointDamage >= this.Const.Combat.InjuryMinDamage)
		{
			local threshold = _entity.getCurrentProperties().ThresholdToInflictInjuryMult * this.Const.Combat.InjuryThresholdMult * meleeTarget.getCurrentProperties().ThresholdToReceiveInjuryMult;
			local dmg = damage.HitpointDamage / (meleeTarget.getHitpointsMax() * 1.0);

			if (threshold * 0.25 <= dmg)
			{
				score = score * this.Const.AI.Behavior.DistractPreferInjuryMult;
			}
		}

		local surroundedTargets = 0;
		local surroundingAllies = 0;
		foreach (target in targets)
		{
			local zoc = target.getTile().getZoneOfControlCountOtherThan(target.getAlliedFactions());
			if (zoc == 0)
			{
				continue;
			}
			surroundedTargets++;
			surroundingAllies += zoc;
			local alliesWithReach = target.getActorsAtDistanceAsArray(2, this.Const.FactionRelation.Enemy);
			foreach (ally in alliesWithReach)
			{
				if (!ally.hasZoneOfControl() || ally.getID() == _entity.getID())
				{
					continue;
				}

				local allyAttack = ally.getSkills().getAttackOfOpportunity();
				if (allyAttack != null && allyAttack.getMinRange() < 2 && allyAttack.getMaxRange() > 1)
				{
					surroundingAllies++;
				}
			}
		}

		if (surroundedTargets == 0 || surroundingAllies == 0)
		{
			if (this.Const.AI.VerboseMode)
			{
				this.logInfo("No Surrounded Target or Surrounding Allies in sight");
			}
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (this.Const.AI.VerboseMode)
		{
			this.logInfo("Surrounded Targets : " + surroundedTargets + ", and Surrounding Allies : " + surroundingAllies);
			this.logInfo("Attack Behavior Score: " + attackBehaviorScore);
		}

		score *= surroundingAllies * surroundedTargets * attackBehaviorScore;

		if (score < attackBehaviorScore)
		{
			if (this.Const.AI.VerboseMode)
			{
				this.logInfo("Follow Up Score " + score + " was much lower than melee attack score of " + attackBehaviorScore + " hence no follow up");
			}
			return this.Const.AI.Behavior.Score.Zero;
		}

		return this.Const.AI.Behavior.Score.PTRFollowUp * score;
	}

	function onExecute( _entity )
	{
		this.m.Skill.use(_entity.getTile());
		if (!_entity.isHiddenToPlayer())
		{
			this.getAgent().declareAction();
		}

		this.m.Skill = null;
		return true;
	}
});
