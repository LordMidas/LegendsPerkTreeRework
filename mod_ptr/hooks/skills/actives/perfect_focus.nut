::mods_hookExactClass("skills/actives/perfect_focus", function(o) {
	local create = o.create;
	o.create = function()
	{
		create()
		this.m.ActionPointCost = 0;
	}

	o.getTooltip = function()
	{
		local tooltip = this.skill.getDefaultUtilityTooltip();

		tooltip.extend([
			{
				id = 10,
				type = "text",
				icon = "ui/icons/action_points.png",
				text = "Action Points will be doubled for the remainder of this round, capped at [color=" + this.Const.UI.Color.PositiveValue + "]18[/color]"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Become immune to being knocked back, grabbed or swallowed"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "You will [color=" + this.Const.UI.Color.NegativeValue + "]not be able to move[/color] from your position"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "You will be [color=" + this.Const.UI.Color.NegativeValue + "]exhausted[/color] on your next turn"
			}
		]);

		if (this.getContainer().hasSkill("effects.ptr_exhausted"))
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/warning.png",
				text = "Not usable when Exhausted"
			});
		}

		if (this.getContainer().getActor().isArmedWithRangedWeapon())
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/warning.png",
				text = "Not usable when armed with a ranged weapon"
			});
		}			

		return tooltip;
	}

	o.isUsable = function()
	{
		return this.skill.isUsable() && !this.getContainer().getActor().isArmedWithRangedWeapon() && !this.getContainer().hasSkill("effects.perfect_focus") && !this.getContainer().hasSkill("effects.ptr_exhausted");
	}
});
