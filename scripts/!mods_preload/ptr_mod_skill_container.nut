local gt = this.getroottable();

gt.Const.PTR.modSkillContainer <- function()
{
	::mods_hookNewObject("skills/skill_container", function(o) {
		o.getArrayOfNegativeStatusEffects <- function()
		{
			local ret = [];

			foreach (skill in this.m.Skills)
			{
				if (skill.isGarbage())
				{
					continue;
				}

				if (skill.getID() == "effects.sleeping" ||
				 		skill.getID() == "effects.stunned" ||
						skill.getID() == "effects.dazed" ||
						skill.getID() == "effects.legend_dazed" ||
						skill.getID() == "effects.net" ||
						skill.getID() == "effects.legend_grappled" ||
						skill.getID() == "effects.staggered" ||
						skill.getID() == "effects.web" ||
						skill.getID() == "effects.legend_baffled" ||
						skill.getID() == "effects.rooted" ||
						skill.getID() == "effects.distracted" ||
						skill.getID() == "effects.debilitated" ||
						skill.getID() == "effects.insect_swarm"
						)
				{
					ret.push(skill);
				}
			}

			return ret;
		}
	});
}
