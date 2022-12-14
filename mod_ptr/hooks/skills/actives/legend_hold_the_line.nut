::mods_hookExactClass("skills/actives/legend_hold_the_line", function(o) {
	o.getTooltip = function()
	{
		local tooltip = this.skill.getDefaultUtilityTooltip();
		tooltip.extend([
			{
				id = 6,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Defense"
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

	o.onAdded <- function()
	{
		local actor = this.getContainer().getActor();
		if (actor.isPlayerControlled())
		{
			return;
		}

		local agent = actor.getAIAgent();

		if (agent.findBehavior(this.Const.AI.Behavior.ID.LegendHoldTheLine) == null)
		{
			agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_legend_hold_the_line"));
			agent.finalizeBehaviors();
		}
	}
});
