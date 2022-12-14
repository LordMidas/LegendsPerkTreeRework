::mods_hookExactClass("ai/tactical/behaviors/ai_defend_riposte", function(o) {
	local onEvaluate = o.onEvaluate;
	o.onEvaluate = function( _entity )
	{
		local score = onEvaluate(_entity);
		if (this.m.Skill != null && this.m.Skill.getID() == "actives.riposte")
		{
			local engarde = _entity.getSkills().getSkillByID("perk.ptr_en_garde");
			if (engarde != null && !engarde.m.IsSpent)
			{
				score = this.Const.AI.Behavior.Score.Zero;
			}
		}

		return score;
	}
});
