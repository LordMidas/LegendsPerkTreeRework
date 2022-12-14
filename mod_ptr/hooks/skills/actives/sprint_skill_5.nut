::mods_hookExactClass("skills/actives/sprint_skill_5", function(o) {
	local getTooltip = o.getTooltip;
	o.getTooltip = function()
	{
		local tooltip = getTooltip();
		if (this.getContainer().hasSkill("effects.perfect_focus"))
		{
			tooltip.push({
				id = 11,
				type = "text",
				icon = "ui/icons/warning.png",
				text = "Not usable when under the effects of Perfect Focus"
			});
		}

		return tooltip;
	}

	local isUsable = o.isUsable;
	o.isUsable = function()
	{
		local ret = isUsable();
		if (ret && this.getContainer().hasSkill("effects.perfect_focus"))
		{
			ret = false;
		}

		return ret;
	}
});
