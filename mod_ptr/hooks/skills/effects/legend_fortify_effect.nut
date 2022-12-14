::mods_hookExactClass("skills/effects/legend_fortify_effect", function(o) {
	local getTooltip = o.getTooltip;
	o.getTooltip = function()
	{
		local tooltip = getTooltip();
		tooltip.push(
			{
				id = 6,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Grants immunity to stun, but is removed upon receiving a stunning blow"
			}
		);

		return tooltip;
	}
});
