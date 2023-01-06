::mods_hookExactClass("skills/perks/perk_legend_balance", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.Description = "%name% gains increased speed and endurance by balancing their armor and mobility.";
	}

	o.getTooltip = function()
	{
		local tooltip = this.skill.getTooltip();
		local initBonus = this.getInitiativeBonus()
		if (initBonus > 0)
		{
			tooltip.push({
				id = 6,
				type = "text",
				icon = "ui/icons/initiative.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + initBonus + "[/color] Initiative"
			});
		}
		tooltip.push({
			id = 6,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Initiative loss due to built Fatigue is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color]"
		});

		return tooltip;
	}

	o.getInitiativeBonus <- function()
	{
		return ::Math.floor(this.getContainer().getActor().getItems().getStaminaModifier([::Const.ItemSlot.Body, ::Const.ItemSlot.Head]) * -1 * 0.3);
	}

	o.onUpdate <- function( _properties )
	{
		_properties.FatigueToInitiativeRate *= 0.5;
		_properties.Initiative += this.getInitiativeBonus();
	}

	o.onAfterUpdate = function( _properties )
	{
		// overwrite original function
	}
});
