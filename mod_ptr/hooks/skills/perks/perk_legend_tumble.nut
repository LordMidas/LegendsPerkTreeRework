::mods_hookExactClass("skills/perks/perk_legend_tumble", function(o) {
	local onAfterUpdate = o.onAfterUpdate;
	o.onAfterUpdate = function(_properties)
	{
		local lunge = this.getContainer().getSkillByID("actives.lunge");
		if (lunge == null)
		{
			onAfterUpdate(_properties);
			return;
		}

		local APCostBefore = lunge.m.ActionPointCost;

		onAfterUpdate(_properties);
		
		lunge.m.ActionPointCost = APCostBefore;
	}
});
