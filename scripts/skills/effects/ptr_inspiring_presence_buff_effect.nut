this.ptr_inspiring_presence_buff_effect <- this.inherit("scripts/skills/skill", {
	m = {
		IsInEffect = false,
		BonusActionPoints = 3
	},
	function create()
	{
		this.m.ID = "effects.ptr_inspiring_presence_buff";
		this.m.Name = "Feeling Inspired";
		this.m.Description = "This character started %their% in the presence of a highly inspiring character!";
		this.m.Icon = "ui/perks/perk_28.png";
		this.m.IconMini = "perk_28_mini";
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
		_properties.ActionPoints += this.m.BonusActionPoints;
	}

	function onTurnStart()
	{
		local actor = this.getContainer().getActor();
		local allies = actor.getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.SameFaction);

		local hasInspirer = false;
		local hasMeleeEngagement = actor.isEngagedInMelee();

		foreach (ally in allies)
		{
			local weapon = ally.getMainhandItem();
			if (weapon != null && weapon.getID() == "weapon.player_banner" && ally.getSkills().hasSkill("perk.inspiring_presence"))
			{
				hasInspirer = true;
			}

			if (ally.isEngagedInMelee())
			{
				hasMeleeEngagement = true;
			}
		}

		if (hasInspirer && hasMeleeEngagement)
		{
			this.m.IsInEffect = true;
		}
	}

	function onTurnEnd()
	{
		this.m.IsInEffect = false;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished;
		this.m.IsInEffect = false;
	}
});
