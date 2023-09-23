::mods_hookExactClass("skills/effects/steel_brow_effect", function(o) {
	local getTooltip = o.getTooltip;
	o.getTooltip = function() {
		local ret = getTooltip();
		ret.push({
			id = 10,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Grants passive immunity to Cull"
		});
		return ret
	}
});
