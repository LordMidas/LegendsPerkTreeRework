::mods_hookExactClass("skills/actives/adrenaline_skill", function(o) {
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

		if (agent.findBehavior(this.Const.AI.Behavior.ID.Adrenaline) == null)
		{
			agent.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_adrenaline"));
			agent.finalizeBehaviors();
		}
	}
});
