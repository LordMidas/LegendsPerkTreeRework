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
		this.m.SoundOnUse = [
			"sounds/combat/legends_inspiring_presence_01.wav",
			"sounds/combat/legends_inspiring_presence_02.wav",
			"sounds/combat/legends_inspiring_presence_03.wav"
		];
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
		local actorHasAdjacentEnemy = function( _actor )
		{
			local adjacentEnemies = _actor.getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.Enemy);
			return adjacentEnemies.len() > 0;
		}

		local actor = this.getContainer().getActor();
		local allies = actor.getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.SameFaction);
		local hasAdjacentEnemy = actorHasAdjacentEnemy(actor);
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

			if (!hasAdjacentEnemy && actorHasAdjacentEnemy(ally))
			{
				hasAdjacentEnemy = true;
			}
		}

		if (hasInspirer && hasAdjacentEnemy)
		{
			this.m.IsInEffect = true;
			this.m.IsStartingTurn = true;
			this.spawnIcon("ptr_inspiring_presence_buff_effect", actor.getTile());
			this.Sound.play(this.m.SoundOnUse[this.Math.rand(0, this.m.SoundOnUse.len() - 1)], this.Const.Sound.Volume.Skill * this.m.SoundVolume, actor.getPos());
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
