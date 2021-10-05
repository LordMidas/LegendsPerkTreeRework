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

			if (targetEntity != null)
			{
				if (!targetEntity.isArmedWithShield() && this.isAttack() && !this.isRanged() && this.hasDamageType(this.Const.Damage.DamageType.Piercing))
				{
					local pointyEndPerk = this.getContainer().getSkillByID("perk.ptr_pointy_end")
					if (pointyEndPerk != null)
					{
						ret.push({
							icon = "ui/tooltips/positive.png",
							text = "[color=" + this.Const.UI.Color.PositiveValue + "]" + pointyEndPerk.getBonus() + "%[/color] Pointy End"
						});
					}
				}

				if (targetEntity.isArmedWithRangedWeapon() && this.isAttack() && this.isRanged())
				{
					local rangedSupremacyPerk = this.getContainer().getSkillByID("perk.ptr_ranged_supremacy");
					if (rangedSupremacyPerk != null)
					{
						ret.push({
							icon = "ui/tooltips/positive.png",
							text = "[color=" + this.Const.UI.Color.PositiveValue + "]" + rangedSupremacyPerk.getRangedSkillBonus() + "%[/color] Ranged Supremacy"
						});
					}
				}

				local exploitableOpening = targetEntity.getSkills().getSkillByID("effects.ptr_exploitable_opening");
				if (exploitableOpening != null && exploitableOpening.hasOpponent(actor.getID()))
				{
					local exploitOpeningPerk = this.getContainer().getSkillByID("perk.ptr_exploit_opening")
					if (exploitOpeningPerk != null)
					{
						ret.push({
							icon = "ui/tooltips/positive.png",
							text = "[color=" + this.Const.UI.Color.PositiveValue + "]" + exploitOpeningPerk.getBonus() + "%[/color] Exploit Opening"
						});
					}
				}

				if (this.isAttack() && this.isRanged() && this.getContainer().hasSkill("perk.close_combat_archer") && targetEntity.getTile().getDistanceTo(actor.getTile()) <= 3)
				{
					ret.push({
						icon = "ui/tooltips/positive.png",
						text = "Close Combat Archer"
					});
				}

				if (!this.isRanged())
				{
					local patternRecognition = this.getContainer().getSkillByID("perk.ptr_pattern_recognition");
					if (patternRecognition != null)
					{
						local opponentEntry = patternRecognition.getOpponentEntry(targetEntity.getID());
						if (opponentEntry != null)
						{
							ret.push({
								icon = "ui/tooltips/positive.png",
								text = "[color=" + this.Const.UI.Color.PositiveValue + "]" + patternRecognition.getBonus(opponentEntry) + "%[/color] Pattern Recognition"
							});
						}
					}

					local targetPR = targetEntity.getSkills().getSkillByID("perk.ptr_pattern_recognition");
					if (targetPR != null)
					{
						local opponentEntry = targetPR.getOpponentEntry(this.getContainer().getActor().getID());
						if (opponentEntry != null)
						{
							ret.push({
								icon = "ui/tooltips/negative.png",
								text = "[color=" + this.Const.UI.Color.NegativeValue + "]" + targetPR.getBonus(opponentEntry) + "%[/color] Pattern Recognition"
							});
						}
					}

					if (this.getMaxRange() > 1)
					{
						local weapon = this.getContainer().getActor().getMainhandItem();
						if (weapon != null)
						{
							local polearmHitchanceEffect = this.getContainer().getSkillByID("effects.ptr_polearm_hitchance");
							if (polearmHitchanceEffect != null && polearmHitchanceEffect.isEnabled() && this.getContainer().getActor().getTile().getDistanceTo(targetEntity.getTile()) == 1)
							{
								ret.push({
									icon = "ui/tooltips/negative.png",
									text = "[color=" + this.Const.UI.Color.NegativeValue + "]" + polearmHitchanceEffect.getMalus() + "%[/color] Adjacent Target"
								});
							}
						}
					}
				}			

				local dynamicDuoPerk = this.getContainer().getSkillByID("perk.ptr_dynamic_duo");
				if (dynamicDuoPerk != null && !dynamicDuoPerk.isHidden() && dynamicDuoPerk.hasOpponent(targetEntity.getID()))
				{
					ret.push({
						icon = "ui/tooltips/positive.png",
						text = "[color=" + this.Const.UI.Color.PositiveValue + "]" + dynamicDuoPerk.getHitChanceBonus() + "%[/color] Dynamic Duo"
					});
				}

				local targetSI = targetEntity.getSkills().getSkillByID("perk.ptr_survival_instinct");
				if (targetSI != null)
				{
					local bonus = targetSI.getBonus();
					if (bonus > 0)
					{
						ret.push({
							icon = "ui/tooltips/negative.png",
							text = "[color=" + this.Const.UI.Color.NegativeValue + "]" + targetSI.getBonus() + "%[/color] Survival Instinct"
						});
					}
				}

				// local immersiveDamage = this.getContainer().getSkillByID("effects.ptr_immersive_damage");
				// if (immersiveDamage != null)
				// {
				// 	local chanceFullDamage = immersiveDamage.getChanceFullDamage(this, targetEntity);
				// 	local color = chanceFullDamage > 50 ? this.Const.UI.Color.PositiveValue : this.Const.UI.Color.NegativeValue;

				// 	ret.push({
				// 		icon = "ui/icons/regular_damage.png",
				// 		text = "[color=" + color + "]" + chanceFullDamage + "%[/color] Chance to Inflict Full Damage"
				// 	});
				// }
			}

			return ret;
		});
	});
}
