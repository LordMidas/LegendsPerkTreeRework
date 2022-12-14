::mods_hookExactClass("skills/effects/legend_holding_the_line", function(o) {
	o.getTooltip = function()
	{
		local tooltip = this.skill.getTooltip();
		tooltip.extend([
			{
				id = 6,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Defense"
			},
			{
				id = 6,
				type = "text",
				icon = "ui/icons/regular_damage.png",
				text = "Receive only [color=" + this.Const.UI.Color.PositiveValue + "]90%[/color] of any damage"
			}
		]);

		return tooltip;
	}

	o.onUpdate = function( _properties )
	{
		_properties.MeleeDefense += 10;
		_properties.DamageReceivedTotalMult *= 0.9;
	}
});
