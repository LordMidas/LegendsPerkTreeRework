::mods_hookExactClass("skills/perks/perk_legend_assured_conquest", function(o) {
	local create = o.create;
	o.create = function()
	{
		this.m.Type = ::Const.SkillType.Perk | ::Const.SkillType.StatusEffect;
		this.m.Description = "This character believes that %their% victory is an absolute certainty.";
	}

	o.getTooltip <- function()
	{
		local tooltip = this.skill.getTooltip();

		local isConfident = this.getContainer().getActor().getMoraleState() == ::Const.MoraleState.Confident;

		tooltip.extend([
			{
				id = 10,
				type = "text",
				icon = "ui/icons/bravery.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + (isConfident ? 20 : 10) + "%[/color] Resolve"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/bravery.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + (isConfident ? 20 : 10) + "[/color] Resolve at positive morale checks"
			}
		]);

		if (isConfident)
		{
			tooltip.extend([
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_skill.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] Melee Skill"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/ranged_skill.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] Ranged Skill"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] Melee Defense"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/ranged_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] Ranged Defense"
				}
			]);
		}

		return tooltip;
	}

	o.onUpdate = function( _properties )
	{	
		if (this.getContainer().getActor().getMoraleState() == this.Const.MoraleState.Confident)
		{
			_properties.BraveryMult *= 1.2;
			_properties.MeleeSkillMult *= 1.05;
			_properties.RangedSkillMult *= 1.05;
			_properties.MeleeDefenseMult *= 1.05;
			_properties.RangedDefenseMult *= 1.05;
		}
		else
		{
			_properties.BraveryMult *= 1.1;
		}
	}

	o.getBonusResAtPositiveMoraleCheck <- function()
	{
		return this.getContainer().getActor().getMoraleState() == this.Const.MoraleState.Confident ? 20 : 10;
	}
});
