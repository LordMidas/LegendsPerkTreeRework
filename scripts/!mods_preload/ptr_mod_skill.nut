local gt = this.getroottable();

gt.Const.PTR.modSkill <- function()
{
	::mods_hookBaseClass("skills/skill", function(o) {
		o = o[o.SuperName];

		local oldgetHitFactors = ::mods_getMember(o, "getHitFactors");
		::mods_override(o, "getHitFactors", function(_targetTile)
		{
			local ret = oldgetHitFactors(_targetTile);

			//local user = this.m.Container.getActor();
			//local myTile = user.getTile();
			local targetEntity = _targetTile.IsOccupiedByActor ? _targetTile.getEntity() : null;

			if (targetEntity != null && !targetEntity.isArmedWithShield() && this.getContainer().hasSkill("perk.ptr_pointy_end") && this.isAttack() && !this.isRanged() && this.hasPiercingDamage())
			{
				ret.push({
					icon = "ui/tooltips/positive.png",
					text = "Pointy End"
				});
			}

			if (targetEntity != null && targetEntity.isArmedWithRangedWeapon() && this.getContainer().hasSkill("perk.ptr_ranged_supremacy") && this.isAttack() && this.isRanged())
			{
				ret.push({
					icon = "ui/tooltips/positive.png",
					text = "Ranged Supremacy"
				});
			}

			if (targetEntity != null)
			{
				local exploitableOpening = targetEntity.getSkills().getSkillByID("effects.ptr_exploitable_opening");
				if (exploitableOpening != null && exploitableOpening.hasOpponent(this.getContainer().getActor()) && this.getContainer().hasSkill("perk.ptr_exploit_opening"))
				{
					ret.push({
						icon = "ui/tooltips/positive.png",
						text = "Exploit Opening"
					});
				}
			}

			return ret;
		});
	});
}
