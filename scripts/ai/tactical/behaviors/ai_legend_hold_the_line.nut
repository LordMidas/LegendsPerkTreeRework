this.ai_legend_hold_the_line <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		TargetTile = null,
		PossibleSkills = [
			"actives.legend_hold_the_line"
		],
		Skill = null
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.LegendHoldTheLine;
		this.m.Order = this.Const.AI.Behavior.Order.LegendHoldTheLine;
		this.m.IsThreaded = false;
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
		local enemies = _entity.getActorsWithinDistanceAsArray(6, this.Const.FactionRelation.Enemy);
		local allies = _entity.getActorsWithinDistanceAsArray(4, this.Const.FactionRelation.SameFaction);
		local myTile = _entity.getTile();
		local useScore = 0.0;
		local numTargets = 0;

		foreach( enemy in enemies )
		{
			if (!enemy.hasZoneOfControl())
			{
				continue;
			}

			local enemyAttack = enemy.getSkills().getAttackOfOpportunity();

			local bestTarget = this.queryBestMeleeTarget(enemy, enemyAttack, allies);

			if (bestTarget.Target == null || bestTarget.Target.getFaction() != _entity.getFaction() || bestTarget.Target.getMoraleState() == this.Const.MoraleState.Fleeing || bestTarget.Target.getSkills().hasSkill("effects.legend_holding_the_line"))
			{
				continue;
			}

			local thisScore = enemyAttack.getHitchance(bestTarget.Target);

			numTargets++;

			useScore = useScore + thisScore;
		}

		if (numTargets <= 1)
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
		this.m.TargetTile = null;
		return true;
	}
});
