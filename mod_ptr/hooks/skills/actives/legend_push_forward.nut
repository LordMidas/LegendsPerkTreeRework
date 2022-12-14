::mods_hookExactClass("skills/actives/legend_push_forward", function(o) {
	local onAdded = ::mods_getMember(o, "onAdded");
	o.onAdded <- function()
	{
		onAdded();
		local actor = this.getContainer().getActor();
		if (actor.isPlayerControlled())
		{
			return;
		}

		local agent = actor.getAIAgent();

		if (agent.findBehavior(this.Const.AI.Behavior.ID.LegendPushForward) == null)
		{
			agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_legend_push_forward"));
			agent.finalizeBehaviors();
		}
	}
});
