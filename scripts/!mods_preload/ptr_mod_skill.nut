local gt = this.getroottable();

gt.Const.PTR.modSkill <- function()
{
	::mods_hookBaseClass("skills/skill", function(o) {
		o = o[o.SuperName];

		local getHitFactors = ::mods_getMember(o, "getHitFactors");
		::mods_override(o, "getHitFactors", function(_targetTile)
		{
			local ret = getHitFactors(_targetTile);

			//local user = this.m.Container.getActor();
			//local myTile = user.getTile();
			local targetEntity = _targetTile.IsOccupiedByActor ? _targetTile.getEntity() : null;
			local actor = this.getContainer().getActor();

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

			if (targetEntity != null && this.isAttack() && this.isRanged() && this.getContainer().hasSkill("perk.close_combat_archer") && targetEntity.getTile().getDistanceTo(actor.getTile()) <= 3)
			{
				ret.push({
					icon = "ui/tooltips/positive.png",
					text = "Close Combat Archer"
				});
			}

			if (targetEntity != null)
			{
				local patternRecognition = targetEntity.getSkills().getSkillByID("effects.ptr_pattern_recognition");
				if (patternRecognition != null)
				{
					local opponentEntry = patternRecognition.getOpponentEntry(targetEntity);
					if (opponentEntry != null)
					{
						ret.push({
							icon = "ui/tooltips/positive.png",
							text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + (patternRecognition.m.MeleeSkillBonus * opponentEntry.Stacks) + "[/color] Pattern Recognition"
						});
					}
				}
			}

			return ret;
		});
	});
}
