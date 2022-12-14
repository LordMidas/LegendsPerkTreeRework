::mods_hookExactClass("ai/tactical/behaviors/ai_engage_ranged", function(o) {
	local onExecute = o.onExecute;
	o.onExecute = function(_entity)
	{
		if (this.m.IsWaiting && _entity.getSkills().hasSkill("effects.ptr_arrow_to_the_knee_attack"))
		{
			this.m.IsWaiting = false;
		}

		return onExecute(_entity);
	}
});
