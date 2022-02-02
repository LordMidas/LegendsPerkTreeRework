this.ptr_inspiring_presence_buff_effect <- this.inherit("scripts/skills/skill", {
	m = {
		BonusActionPoints = 3,
		IsInEffect = false,
		IsStartingTurn = false
	},
	function create()
	{
		this.m.ID = "effects.ptr_inspiring_presence_buff";
		this.m.Name = "Feeling Inspired";
		this.m.Description = "This character started %their% turn in the presence of a highly inspiring character!";
		this.m.Icon = "skills/ptr_inspiring_presence_buff_effect.png";		
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return !this.m.IsInEffect;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/action_points.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.BonusActionPoints + "[/color] Action Points"
		});

		return tooltip;
	}

	function onUpdate( _properties )
	{
		if (this.m.IsInEffect)
		{
			_properties.ActionPoints += this.m.BonusActionPoints;
			
			if (this.m.IsStartingTurn)
			{
				this.getContainer().getActor().setActionPoints(this.getContainer().getActor().getActionPointsMax() + this.m.BonusActionPoints);
				this.m.IsStartingTurn = false;
			}
		}
	}

	function onTurnStart()
	{
		local hasAdjacentEnemy = function( _actor )
		{
			local adjacentEnemies = _actor.getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.Enemy);
			return adjacentEnemies.len() > 0;
		}

		local actor = this.getContainer().getActor();
		local allies = actor.getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.SameFactions);
		local hasAdjacentEnemy = hasAdjacentEnemy(actor);
		local hasInspirer = false;

		foreach (ally in allies)
		{
			if (!hasInspirer)
			{
				local inspiringPresence = ally.getSkills().getSkillByID("perk.inspiring_presence");
				if (inspiringPresence != null && inspiringPresence.isEnabled())
				{
					hasInspirer = true;
				}
			}

			if (!hasAdjacentEnemy && hasAdjacentEnemy(ally))
			{
				hasAdjacentEnemy = true;
			}
		}

		if (hasInspirer && hasAdjacentEnemy)
		{
			this.m.IsInEffect = true;
			this.m.IsStartingTurn = true;
			this.spawnIcon("ptr_inspiring_presence_buff_effect", actor.getTile());
		}
	}

	function onTurnEnd()
	{
		this.m.IsInEffect = false;
		this.m.IsStartingTurn = false;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished;
		this.m.IsInEffect = false;
		this.m.IsStartingTurn = false;
	}
});
