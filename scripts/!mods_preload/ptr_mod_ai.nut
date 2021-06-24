local gt = this.getroottable();

gt.Const.PTR.modAI <- function()
{
	::mods_hookNewObject("ai/tactical/behaviors/ai_engage_ranged", function(o) {

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

	::mods_hookNewObject("ai/tactical/behaviors/ai_attack_bow", function(o) {
		local onEvaluate = o.onEvaluate;
		o.onEvaluate = function(_entity)
		{
			local ret = onEvaluate(_entity);
			local skill = _entity.getSkills().getSkillByID("effects.ptr_arrow_to_the_knee_attack");
			if (skill != null && skill.m.AIForcedTarget != null )
			{
				ret *= 1000;
			}

			return ret;
		}
		local onExecute = o.onExecute;
		o.onExecute = function(_entity)
		{
			if (this.m.TargetTile != null)
			{
				local skill = _entity.getSkills().getSkillByID("effects.ptr_arrow_to_the_knee_attack");
				if (skill != null && skill.m.AIForcedTarget != null )
				{
					this.m.TargetTile = skill.m.AIForcedTarget.getTile();
				}
			}

			return onExecute(_entity);
		}
	});
}
