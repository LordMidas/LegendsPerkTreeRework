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
			if (skill != null && skill.m.AIForcedTarget != null && skill.m.AIForcedSkill != null && skill.m.AIForcedSkill.isUsableOn(skill.m.AIForcedTarget.getTile()))
			{
				if (this.Const.AI.VerboseMode && this.m.SelectedSkill != null && this.m.TargetTile != null)
				{
					this.logInfo("* I would have shot " + this.m.TargetTile.getEntity().getName() + " with " + this.m.SelectedSkill.getID() + " but I am instead switching targets to " + skill.m.AIForcedTarget.getName() + " using " + skill.m.AIForcedSkill.getID() + " as I have prepped an Arrow to the Knee");
				}
				this.m.TargetTile = skill.m.AIForcedTarget.getTile();
				this.m.SelectedSkill = skill.m.AIForcedSkill;
				skill.m.AIForcedTarget = null;
				skill.m.AIForcedSkill = null;
				ret *= 1000;
			}

			return ret;
		}
	});
}
