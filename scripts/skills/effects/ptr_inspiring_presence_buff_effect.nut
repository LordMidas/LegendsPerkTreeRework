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
		this.m.Description = "This character started %their% in the presence of a highly inspiring character!";
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
		local actor = this.getContainer().getActor();
		local allies = actor.getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.SameFaction);

		local hasInspirer = false;
		local hasMeleeEngagement = actor.isEngagedInMelee();

		foreach (ally in allies)
		{
			if (ally.getID() == actor.getID())
			{
				continue;
			}

			if (!hasInspirer)
			{
				local inspiringPresence = ally.getSkills().getSkillByID("perk.inspiring_presence");
				if (inspiringPresence != null && inspiringPresence.isEnabled())
				{
					hasInspirer = true;
				}
			}

			if (!hasMeleeEngagement && ally.isEngagedInMelee())
			{
				hasMeleeEngagement = true;
			}
		}

		if (hasInspirer && hasMeleeEngagement)
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
