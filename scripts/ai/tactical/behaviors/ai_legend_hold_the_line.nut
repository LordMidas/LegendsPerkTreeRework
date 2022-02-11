this.ai_legend_hold_the_line <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		PossibleSkills = [
			"actives.legend_hold_the_line"
		],
		Skill = null
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.LegendHoldTheLine;
		this.m.Order = this.Const.AI.Behavior.Order.LegendHoldTheLine;
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

		this.m.Skill = this.selectSkill(this.m.PossibleSkills);

		if (this.m.Skill == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		score = score * this.getFatigueScoreMult(this.m.Skill);
		local myTile = _entity.getTile();
		local allies = this.Tactical.Entities.getInstancesOfFaction(_entity.getFaction());
		for (local i = allies.len() - 1; i >= 0; i--)
		{
			if (allies[i].getTile().getDistanceTo(myTile) > 4)
			{
				allies.remove(i);
			}
		}
		local enemies = this.Tactical.Entities.getInstancesHostileWithFaction(_entity.getFaction());		
		local useScore = 0.0;
		local numTargets = 0;

		local getBestMeleeTarget = function( _entity, _skill, _targets )
		{
			local bestTarget;
			local bestScore = -9000;

			foreach( target in _targets )
			{
				if (_skill.onVerifyTarget(_entity.getTile(), target.getTile()) && _skill.isInRange(target.getTile(), _entity.getTile()))
				{
					local score = this.queryTargetValue(_entity, target, _skill);

					if (score > bestScore)
					{
						bestTarget = target;						
					}
				}
			}

			return bestTarget;
		}

		foreach( enemy in enemies )
		{
			if (!enemy.hasZoneOfControl())
			{
				continue;
			}

			local enemyAttack = enemy.getSkills().getAttackOfOpportunity();

			local bestTarget = this.getBestMeleeTarget(enemy, enemyAttack, allies);
			if (bestTarget == null || bestTarget.getFaction() != _entity.getFaction() || bestTarget.getMoraleState() == this.Const.MoraleState.Fleeing || bestTarget.getSkills().hasSkill("effects.legend_holding_the_line"))
			{
				continue;
			}

			local hitChance = enemyAttack.getHitchance(bestTarget.Target);

			if (hitChance < 66)
			{
				continue;
			}

			numTargets++;
			
			useScore = useScore + hitChance - 60;
		}

		if (numTargets < 5)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		score = score * (useScore * 0.01);
		return this.Const.AI.Behavior.Score.LegendHoldTheLine * score;
	}

	function onExecute( _entity )
	{
		if (this.m.IsFirstExecuted)
		{
			this.getAgent().adjustCameraToTarget(_entity.getTile());
			this.m.IsFirstExecuted = false;
			return false;
		}

		this.m.Skill.use(_entity.getTile());

		if (!_entity.isHiddenToPlayer())
		{
			this.getAgent().declareAction();
			this.getAgent().declareEvaluationDelay(1500);
		}

		this.m.Skill = null;
		return true;
	}
});
