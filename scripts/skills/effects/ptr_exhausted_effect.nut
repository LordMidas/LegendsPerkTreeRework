this.ptr_exhausted_effect <- this.inherit("scripts/skills/skill", {
	m = {
		DamageReductionPercentage = 50,
		FatigueBuiltIncrease = 100,
		StartingAPMalus	= 50
	},
	function create()
	{
		this.m.ID = "effects.ptr_exhausted";
		this.m.Name = "Exhausted";
		this.m.Description = "This character is exhasuted after a particularly intense turn. This effect will expire at the end of this turn.";
		//this.m.Icon = "skills/ptr_exhausted_effect.png";
		this.m.Icon = "ui/perks/ptr_wear_them_down.png";
		//this.m.IconMini = "ptr_rattled_effect_mini";
		this.m.Overlay = "ptr_worn_down";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.extend(
			[
				{
					id = 10,
					type = "text",
					icon = "ui/icons/damage_dealt.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.DamageReductionPercentage + "%[/color] Damage inflicted"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/fatigue.png",
					text = "Skills build [color=" + this.Const.UI.Color.NegativeValue + "]+" + this.m.FatigueBuiltIncrease + "%[/color] Fatigue"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Will start the turn with [color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.StartingAPMalus + "%[/color] Action Points"
				},
			]
		);

		return tooltip;
	}

	function onUpdate( _properties )
	{
		if (!this.isGarbage())
		{
			_properties.DamageTotalMult *= this.m.DamageReductionPercentage * 0.01;
			_properties.FatigueEffectMult *= this.m.FatigueBuiltIncrease * 2 * 0.01;
		}
	}

	function onTurnStart()
	{
		local actor = this.getContainer().getActor();
		actor.setActionPoints(this.Math.floor(actor.getActionPointsMax() * this.m.StartingAPMalus * 0.01));
	}

	function onTurnEnd()
	{
		this.removeSelf();
	}
});
