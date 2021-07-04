this.ai_legend_push_forward <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		TargetTile = null,
		PossibleSkills = [
			"actives.legend_push_forward"
		],
		Skill = null
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.LegendPushForward;
		this.m.Order = this.Const.AI.Behavior.Order.LegendPushForward;
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

		if (allies.len() <= 1)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		foreach( ally in allies )
		{
			if (!ally.hasZoneOfControl())
			{
				continue;
			}

			local allyAttack = ally.getSkills().getAttackOfOpportunity();

			local bestTarget = this.queryBestMeleeTarget(ally, allyAttack, enemies);

			if (bestTarget.Target == null || bestTarget.Target.getFaction() != _entity.getFaction() || bestTarget.Target.getSkills().hasSkill("effects.legend_pushing_forward"))
			{
				continue;
			}

			local thisScore = allyAttack.getHitchance(bestTarget.Target);

			numTargets++;

			useScore = useScore + thisScore;
		}

		if (numTargets == 0)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		score = score * (useScore * 0.01);
		return this.Const.AI.Behavior.Score.LegendPushForward * score;
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
