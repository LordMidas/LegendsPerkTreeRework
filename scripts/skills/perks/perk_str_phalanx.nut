this.perk_str_phalanx <- this.inherit("scripts/skills/skill", {
	m = {
		Count = 0
	},
	function create()
	{
		this.m.ID = "perk.str_phalanx";
		this.m.Name = this.Const.Strings.PerkName.STRPhalanx;
		this.m.Description = this.Const.Strings.PerkDescription.STRPhalanx;
		this.m.Icon = "ui/perks/str_phalanx.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.m.Count == 0;
	}

	function getDescription()
	{
		return "This character is highly skilled in fighting in a shielded formation and gains bonuses when adjacent to allies with shields."
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + (this.m.Count * 5) + "[/color] Melee Defense"
		});

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null || weapon.getCategories().find("Spear") != null)
		{
			tooltip.push({
				type = "text",
				id = 10,
				icon = "ui/icons/melee_skill.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + (this.m.Count * 5) + "[/color] Melee Skill"
			});
		}

		return tooltip;
	}

	function onUpdate(_properties)
	{
		this.m.Count = 0;

		local actor = this.getContainer().getActor();
		if (!actor.isArmedWithShield() || !actor.isEngagedInMelee())
		{
			return;
		}

		local adjacentAllies = actor.getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.Allied);

		foreach (ally in adjacentAllies)
		{
			if (!ally.isArmedWithShield() || !ally.isEngagedInMelee())
			{
				continue;
			}

			this.m.Count += 1;
		}

		_properties.MeleeDefense += this.m.Count * 5;

		local weapon = actor.getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Spear") == null)
		{
			return;
		}

		_properties.MeleeSkill += this.m.Count * 5;
	}
});
