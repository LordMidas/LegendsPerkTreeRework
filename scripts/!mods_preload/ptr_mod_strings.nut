local gt = this.getroottable();

gt.Const.PTR.hookStrings <- function()
{
	gt.Const.Strings.PerkName.PTRDismemberment <- "Dismemberment";
	gt.Const.Strings.PerkDescription.PTRDismemberment <- "Cutting attacks have a [color=" + this.Const.UI.Color.NegativeValue + "]15%[/color] lower damage threshold to inflict injuries. Cutting attacks can now inflict injuries on Undead.\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeft <- "Heft";
	gt.Const.Strings.PerkDescription.PTRHeft <- "Maximum Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]+20[/color] when using One-Handed Axes and by [color=" + this.Const.UI.Color.PositiveValue + "]+40[/color] when using Two-Handed Axes.\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRBetweenTheEyes <- "Between the Eyes";
	gt.Const.Strings.PerkDescription.PTRBetweenTheEyes <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+50%[/color] of your Melee Skill as additional chance to hit the head for your next attack. If the attack misses, the effect is wasted. Costs 1 AP and builds 30 Fatigue.\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRCull <- "Cull";
	gt.Const.Strings.PerkDescription.PTRCull <- "When using Axes, hits to the head will instantly kill any target below [color=" + this.Const.UI.Color.NegativeValue + "]40%[/color] health when using Two-Handed Axes and below [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] health when using One-Handed Axes.\n[color=#0b0084]From the Axe perk group[/color]";

	gt.Const.Strings.PerkName.PTRArrowToTheKnee <- "Arrow to the Knee";
	gt.Const.Strings.PerkDescription.PTRArrowToTheKnee <- "Causes your next ranged attack to apply a debuff on the target for one turn, reducing their Melee and Ranged Defense by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] and requiring them to spend [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] additional Action Points per tile moved.\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRRangedSupremacy <- "Ranged Supremacy";
	gt.Const.Strings.PerkDescription.PTRRangedSupremacy <- "Ranged attacks have [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit against enemies wielding ranged weapons.\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRFlamingArrows <- "Flaming Arrows";
	gt.Const.Strings.PerkDescription.PTRFlamingArrows <- "Requires Bow. Aimed Shot now additionally does fire damage and will always trigger a morale check with a penalty to Resolve to [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] of your Ranged Skill if it hits the target.\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRMarksmanship <- "Marksmanship";
	gt.Const.Strings.PerkDescription.PTRMarksmanship <- "When using a Ranged weapon, gain [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Ranged Skill as additional Minimum and Maximum Damage.\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRHipShooter <- "Hip Shooter";
	gt.Const.Strings.PerkDescription.PTRHipShooter <- "Requires Bow. Each subsequent Quick Shot requires [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] less Action Point to a minimum of [color=" + this.Const.UI.Color.PositiveValue + "]2[/color].\n[color=#0b0084]From the Bow perk group[/color]";

	gt.Const.Strings.PerkName.PTROpenWounds <- "Open Wounds";
	gt.Const.Strings.PerkDescription.PTROpenWounds <- "Attacks inflict an additional stack of Bleeding against targets who have sustained an injury. This chance is 100% for Cleavers and 25% for other weapons.\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRBloodlust <- "Bloodlust";
	gt.Const.Strings.PerkDescription.PTRBloodlust <- "When adjacent to Bleeding enemies, skills build up [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] less Fatigue for each stack of Bleeding. Additionally, Fatigue Recovery is increased by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] per stack of Bleeding on adjacent enemies at the end of your Turn.\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRBloodbath <- "Bloodbath";
	gt.Const.Strings.PerkDescription.PTRBloodbath <- "Fatalities instantly restore 3 Action Points. Has no limit on how many times it can proc per turn.\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRMauler <- "Mauler (requires Cleaver)";
	gt.Const.Strings.PerkDescription.PTRMauler <- "Attacks do more damage, the less armor your target has. This bonus is [color=" + this.Const.UI.Color.PositiveValue + "]+35%[/color] damage at no armor, and [color=" + this.Const.UI.Color.PositiveValue + "]+0%[/color] damage at 100% armor remaining.\n[color=#0b0084]From the Cleaver perk group[/color]";

	gt.Const.Strings.PerkName.PTRThroughTheRanks <- "Through the Ranks";
	gt.Const.Strings.PerkDescription.PTRThroughTheRanks <- "Ranged attacks have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] reduced chance to inflict friendly fire.\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTREntrenched <- "Entrenched";
	gt.Const.Strings.PerkDescription.PTREntrenched <- "When using a ranged weapon and standing adjacent to an ally who is not engaged in Melee, gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Ranged Skill, Ranged Defense, and Resolve.\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRPowerShot <- "Power Shot";
	gt.Const.Strings.PerkDescription.PTRPowerShot <- "Requires Crossbow or Firearm. Attacks from crossbows and firearms have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to inflict Stagger for one turn.\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRIronSights <- "Iron Sights";
	gt.Const.Strings.PerkDescription.PTRIronSights <- "Ranged attacks have an additional [color=" + this.Const.UI.Color.PositiveValue + "]+15%[/color] chance to hit the head.\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRWindlassTraining <- "Windlass Training";
	gt.Const.Strings.PerkDescription.PTRWindlassTraining <- "Requires Crossbow. The Action Point Cost of reloading a crossbow is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color].\n[color=#0b0084]From the Crossbow perk group[/color]";

	gt.Const.Strings.PerkName.PTRBetweenTheRibs <- "Between the Ribs";
	gt.Const.Strings.PerkDescription.PTRBetweenTheRibs <- "Requires Dagger. When using daggers, gain [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] damage per ally surrounding the target.\n[color=#0b0084]From the Dagger perk group[/color]";
	gt.Const.Strings.PerkName.PTRLightWeapon <- "Light Weapon";
	gt.Const.Strings.PerkDescription.PTRLightWeapon <- "Requires Dagger. When using a dagger, gain [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] Action Point and skills build up [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] less Fatigue.\n[color=#0b0084]From the Dagger perk group[/color]";
	gt.Const.Strings.PerkName.PTRSwiftStabs <- "Swift Stabs";
	gt.Const.Strings.PerkDescription.PTRSwiftStabs <- "Requires Dagger. A successful Puncture reduces the Action Point cost of Puncture to [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] for the remainder of this turn.\n[color=#0b0084]From the Dagger perk group[/color]";

	gt.Const.Strings.PerkName.PTRSmallTarget <- "Small Target";
	gt.Const.Strings.PerkDescription.PTRSmallTarget <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit the head.\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeadSmasher <- "Head Smasher";
	gt.Const.Strings.PerkDescription.PTRHeadSmasher <- "The damage reduction from target's Steel Brow is reduced from [color=" + this.Const.UI.Color.NegativeValue + "]+100%[/color] to [color=" + this.Const.UI.Color.NegativeValue + "]+75%[/color]. Hits to the head deal an additional [color=" + this.Const.UI.Color.PositiveValue + "]+15%[/color] damage.\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRFlailSpinner <- "Flail Spinner";
	gt.Const.Strings.PerkDescription.PTRFlailSpinner <- "Requires Flail. Attacks with flails have a [color=" + this.Const.UI.Color.PositiveValue + "]+50%[/color] chance to do a free extra attack.\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRDeadlyPrecision <- "Deadly Precision";
	gt.Const.Strings.PerkDescription.PTRDeadlyPrecision <- "When using flails, an additional random [color=" + this.Const.UI.Color.PositiveValue + "]0-25%[/color] of damage ignores armor.\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRFromAllSides <- "From all Sides";
	gt.Const.Strings.PerkDescription.PTRFromAllSides <- "Requires Flail. Successful hits from Flails progressively reduce the target's Melee and Ranged Defense by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] for one turn. The effect is doubled if the attacks hit the head.\n[color=#0b0084]From the Flail perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendSmackdown = "Use your size and strength to bully your way into the prime position. Unlocks the \'Wind Up\' skill that prepares you to knock back and Baffle an opponent on your next swing. Also causes the target to spend [color=" + this.Const.UI.Color.NegativeValue + "]3[/color] additional Action Points per tile moved on their turn. \n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSmackdown].Tooltip = gt.Const.Strings.PerkDescription.LegendSmackdown;
	gt.Const.Strings.PerkName.PTRRattle <- "Rattle";
	gt.Const.Strings.PerkDescription.PTRRattle <- "When attacking an opponent wearing armor, if an attack does at least [color=" + this.Const.UI.Color.NegativeValue + "]10[/color] damage to Hitpoints, apply the Rattled effect which reduces the target\'s damage output by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] turn. Only works with attacks that do Blunt damage.\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDeepImpact <- "Deep Impact";
	gt.Const.Strings.PerkDescription.PTRDeepImpact <- "The threshold to inflict injury from blunt damage attacks is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of the currently equipped weapon's armor effectiveness.\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRSoftMetal <- "Soft Metal";
	gt.Const.Strings.PerkDescription.PTRSoftMetal <- "When attacking an enemy with less than [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] armor remaining, an additional [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] of damage ignores armor. When using hammers, this bonus starts at [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] armor remaining.\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDismantle <- "Dismantle";
	gt.Const.Strings.PerkDescription.PTRDismantle <- "Requires hammer. Every successful hit with a hammer causes the target to receive a stacking [color=" + this.Const.UI.Color.NegativeValue + "]+10%[/color] increased armor damage for the remainder of the combat.\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDentArmor <- "Dent Armor";
	gt.Const.Strings.PerkDescription.PTRDentArmor <- "Requires hammer. Attacks from hammers have a chance to dent the target's armor, reducing their Action Points by [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] for the remainder of the combat. The chance is [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] for Two-Handed Hammers and [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] for One-Handed Hammers. Only works when attacks hit armor.\n[color=#0b0084]From the Hammer perk group[/color]";

	gt.Const.Strings.PerkName.PTRPushIt <- "Push It";
	gt.Const.Strings.PerkDescription.PTRPushIt <- "Fatigue damage inflicted from successful hits is doubled.\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeavyStrikes <- "Heavy Strikes";
	gt.Const.Strings.PerkDescription.PTRHeavyStrikes <- "Successful hits with maces always apply the Baffled effect.\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRBearDown <- "Bear Down";
	gt.Const.Strings.PerkDescription.PTRBearDown <- "Attacks do [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] damage against enemies who have suffered a negative status effect such as Baffled, Dazed or Stunned etc.\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRConcussiveStrikes <- "Concussive Strikes";
	gt.Const.Strings.PerkDescription.PTRConcussiveStrikes <- "Hits to the head with any weapon apply Dazed for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn. This duration is increased to [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] turns for One-Handed Maces. Similar hits with a Two-Handed Mace stun the target for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn, and if the target is immune to stun, apply Dazed instead for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn.\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRBoneBreaker <- "Bone Breaker";
	gt.Const.Strings.PerkDescription.PTRBoneBreaker <- "Requires mace. When using a Two-Handed Mace, attacks against stunned or rooted targets are guaranteed to inflict an injury. If the damage was already sufficient to inflict an injury, it inflicts an additional injury. All maces do +15% damage to Undead.\n[color=#0b0084]From the Mace perk group[/color]";

	gt.Const.Strings.PerkName.PTRBolster <- "Bolster";
	gt.Const.Strings.PerkDescription.PTRBolster <- "Requires Polearm. When wielding a Polearm, increase the Resolve of adjacent allies by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of your Melee Skill. If multiple polearm users with this perk are present, only the highest bonus applies.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRLeverage <- "Leverage";
	gt.Const.Strings.PerkDescription.PTRLeverage <- "When using two-handed weapons, attacks at 2 tiles range have [color=" + this.Const.UI.Color.PositiveValue + "]+20%[/color] chance to hit the head.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRIntimidate <- "Intimidate";
	gt.Const.Strings.PerkDescription.PTRIntimidate <- "Requires Polearm. Attacks from Polearms reduce the Resolve of the target by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] of your Melee Skill. Multiple attacks do not stack.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRFormidableApproach <- "Formidable Approach";
	gt.Const.Strings.PerkDescription.PTRFormidableApproach <- "When wielding a Two-Handed weapon, reduce the Melee Skill and Melee Defense of any enemy with a One-Handed weapon who enters your zone of control by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] of your Melee Skill. The debuff lasts until the enemy exists your zone of control or successfully hits you.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRFollowUp <- "Follow Up";
	gt.Const.Strings.PerkDescription.PTRFollowUp <- "For one turn, when wielding a Two-Handed Melee weapon and not engaged in melee, do a free attack with [color=" + this.Const.UI.Color.NegativeValue + "]-50%[/color] damage against enemies in your attack range who get successfully hit by your allies. Each subsequent attack does less damage than the last. Costs 4 AP and builds 30 Fatigue.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRLongReach <- "Long Reach";
	gt.Const.Strings.PerkDescription.PTRLongReach <- "Requires Polearm. When wielding a polearm, enemies within 2 tiles are considered surrounded by you for the purposes of hit-chance bonus for any allies attacking that target.\n[color=#0b0084]From the Polearm perk group[/color]";

	gt.Const.Strings.PerkName.PTRPatience <- "Patience";
	gt.Const.Strings.PerkDescription.PTRPatience <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Ranged Skill as long as you have not moved during your turn.\n[color=#0b0084]From the Sling perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeavyProjectiles <- "Heavy Projectiles";
	gt.Const.Strings.PerkDescription.PTRHeavyProjectiles <- "Ranged attacks have a chance to apply the Dazed effect. The chance is [color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] on a hit to the head and [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] on a hit to the body. Ignores target's immunity.\n[color=#0b0084]From the Sling perk group[/color]";
	gt.Const.Strings.PerkName.PTRSniper <- "Sniper";
	gt.Const.Strings.PerkDescription.PTRSniper <- "Damage from Ranged attacks is increased by [color=" + this.Const.UI.Color.PositiveValue + "]2%[/color] per tile the target is away from you.\n[color=#0b0084]From the Sling perk group[/color]";

	gt.Const.Strings.PerkName.PTRPointyEnd <- "Pointy End";
	gt.Const.Strings.PerkDescription.PTRPointyEnd <- "Melee piercing attacks against an enemy without a shield gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRImpaler <- "Impaler";
	gt.Const.Strings.PerkDescription.PTRImpaler <- "Piercing attacks have a [color=" + this.Const.UI.Color.NegativeValue + "]15%[/color] lower damage threshold to inflict injury.\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRThroughTheGaps <- "Through the Gaps";
	gt.Const.Strings.PerkDescription.PTRThroughTheGaps <- "Piercing attacks ignore an additional [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of the target's armor.\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRTwoForOne <- "Two for One";
	gt.Const.Strings.PerkDescription.PTRTwoForOne <- "When using a One-Handed Spear, with the off-hand free, the Action Point cost of Thrust is reduced to [color=" + this.Const.UI.Color.NegativeValue + "]3[/color].\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRABetterGrip <- "A Better Grip";
	gt.Const.Strings.PerkDescription.PTRABetterGrip <- "When using a One-Handed Spear, with the off-hand free, the range of Thrust is increased to [color=" + this.Const.UI.Color.PositiveValue + "]2[/color] and you gain benefit from Reach Advantage.\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRKingOfAllWeapons <- "King of all Weapons";
	gt.Const.Strings.PerkDescription.PTRKingOfAllWeapons <- "When using a spear, perform a free attack against a random enemy in range at the end of your turn.\n[color=#0b0084]From the Spear perk group[/color]";

	gt.Const.Strings.PerkName.PTRVersatileWeapon <- "Versatile Weapon";
	gt.Const.Strings.PerkDescription.PTRVersatileWeapon <- "Requires Sword. When wielding a sword, gain [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] damage, [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] armor penetration and [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] armor effectiveness.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeightenedReflexes <- "Heightened Reflexes";
	gt.Const.Strings.PerkDescription.PTRHeightenedReflexes <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] of your Base Melee Defense as Initiative.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRTempo <- "Tempo";
	gt.Const.Strings.PerkDescription.PTRTempo <- "Every attack against a target who acts after you in the current round increases your Initiative by [color=" + this.Const.UI.Color.PositiveValue + "]+15[/color]. The bonus lasts until the start of your next turn.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRKata <- "Kata";
	gt.Const.Strings.PerkDescription.PTRKata <- "Requires Sword. Unlocks the Kata Step skill which, after a successful attack with swords, allows you to move one tile ignoring zone of control with reduced Action Point cost and minimal Fatigue cost. However, the target tile for the movement must be adjacent to an enemy.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTREnGarde <- "En garde";
	gt.Const.Strings.PerkDescription.PTREnGarde <- "Requires Sword. When wielding a sword, if you have not moved from your position during your turn, use Riposte freely at the end of your turn if your weapon has Riposte. If your weapon does not have Riposte, gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Defense instead until the start of your next turn.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRBloodyHarvest <- "Bloody Harvest";
	gt.Const.Strings.PerkDescription.PTRBloodyHarvest <- "Requires Sword. AOE attacks gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit and do [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] damage.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRSweepingStrikes <- "Sweeping Strikes";
	gt.Const.Strings.PerkDescription.PTRSweepingStrikes <- "AOE attacks lower the Melee Skill of any target hit for one turn. This reduction is [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] for targets with One-Handed weapons and [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for targets with Two-Handed weapons. Only half of this reduction applies if you act after the target in the current round.\n[color=#0b0084]From the Sword perk group[/color]";

	gt.Const.Strings.PerkName.PTREasyTarget <- "Easy Target";
	gt.Const.Strings.PerkDescription.PTREasyTarget <- "When successfully hitting a target, [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of the Fatigue Cost of the attack is returned per negative status effect previously affecting the target.\n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Strings.PerkDescription.LegendMasteryStaves = "Master the art of fighting with staves. Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.\n\nIncreases the chance to apply Dazed.\n\n Reduces the costs for Missile, Revolt, Entice, Chain Lightning and Firefield.\n\nStaff Sweep gains [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit. \n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendMasteryStaves].Tooltip = gt.Const.Strings.PerkDescription.LegendMasteryStaves;
	gt.Const.Strings.PerkDescription.LegendSpecStaffStun = "Master the movements required to spin your staff in a great flourish that lands with additional force. Any strike with a staff that would normally daze, also stuns and staggers.\n\nWhack a\' Smack gains [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n[color=#0b0084]From the Staff perk group[/color]",
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecStaffStun].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecStaffStun;
	gt.Const.Strings.PerkName.PTRWearThemDown <- "Wear them Down";
	gt.Const.Strings.PerkDescription.PTRWearThemDown <- "Gain a chance that an enemy requires two successful rolls to hit you. This chance is [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] per negative status affecting the enemy (e.g. dazed, baffled etc.).\n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Strings.PerkName.PTRWhackASmack <- "Whack a\' Smack";
	gt.Const.Strings.PerkDescription.PTRWhackASmack <- "Requires Staff. While wielding a staff, perform a free attack against anyone who misses an attack against you. This free attack has a [color=" + this.Const.UI.Color.NegativeValue + "]-20%[/color] chance to hit. Applies Baffled on the target if successful.\n[color=#0b0084]From the Staff perk group[/color]";

	gt.Const.Strings.PerkName.PTRHybridization <- "Hybridization";
	gt.Const.Strings.PerkDescription.PTRHybridization <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Melee Skill as Ranged Skill and [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Ranged Skill as Melee Skill.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkName.PTRMomentum <- "Momentum";
	gt.Const.Strings.PerkDescription.PTRMomentum <- "Requires Throwing Weapon. Throwing weapons do [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] damage per tile moved before throwing.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkName.PTROpportunist <- "Opportunist";
	gt.Const.Strings.PerkDescription.PTROpportunist <- "The first time you stand over an enemy's corpse, gain [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] ammo and restore [color=" + this.Const.UI.Color.PositiveValue + "]4[/color] Action Points.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkName.PTRNailedIt <- "Nailed It";
	gt.Const.Strings.PerkDescription.PTRNailedIt <- "The chance to hit the head with ranged attacks is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] but reduced by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] per tile of distance between you and the target.\n[color=#0b0084]From the Throwing perk group[/color]";

	gt.Const.Strings.PerkName.PTRSurvivalInstinct <- "Survival Instinct";
	gt.Const.Strings.PerkDescription.PTRSurvivalInstinct <- "Melee and Ranged Defense are increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] for one turn whenever you get hit. Does not stack from multiple hits.\n[color=#0b0084]From the Resilient perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendAssuredConquest = "Resolve is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] when at Confident morale.\n[color=#0b0084]From the Vicious perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendAssuredConquest].Tooltip = gt.Const.Strings.PerkDescription.LegendAssuredConquest;

	gt.Const.Strings.PerkName.PTRKnowTheirWeakness <- "Know their Weakness";
	gt.Const.Strings.PerkDescription.PTRKnowTheirWeakness <- "After killing an enemy, Melee Skill is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] and Ranged Skill by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color], up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]30%[/color] for each. The bonus drops by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] if you get hit.\n[color=#0b0084]From the Talented perk group[/color]";
	gt.Const.Strings.PerkName.PTRRisingStar <- "Rising Star";
	gt.Const.Strings.PerkDescription.PTRRisingStar <- "Experience Gain is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] until Level 13, and by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] after that. At Level 13, gain [color=" + this.Const.UI.Color.PositiveValue + "]2[/color] perk points.\n[color=#0b0084]From the Talented perk group[/color]";

	gt.Const.Strings.PerkName.PTRFreshAndFurious <- "Fresh and Furious";
	gt.Const.Strings.PerkDescription.PTRFreshAndFurious <- "Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]+25%[/color] when at [color=" + this.Const.UI.Color.PositiveValue + "]0%[/color] Fatigue. This bonus reduces to [color=" + this.Const.UI.Color.NegativeValue + "]0%[/color] when  your Fatigue approaches [color=" + this.Const.UI.Color.NegativeValue + "]30%[/color] of Maximum Fatigue.\n[color=#0b0084]From the Fast perk group[/color]";

	gt.Const.Strings.PerkName.PTRUnstoppable <- "Unstoppable";
	gt.Const.Strings.PerkDescription.PTRUnstoppable <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill and Ranged Skill for every successful attack. You lose half of the bonus if you miss an attack, and all of it if you get hit.\n[color=#0b0084]From the Unstoppable perk group[/color]";

	gt.Const.Strings.PerkName.PTRTheRushOfBattle <- "The Rush of Battle";
	gt.Const.Strings.PerkDescription.PTRTheRushOfBattle <- "When dodging or getting hit by an attack, gain a stacking [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] reduction to the Fatigue Cost of  skills during your next turn, up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color].\n[color=#0b0084]From the Warrior perk group[/color]";

	gt.Const.Strings.PerkName.PTRPersonalArmor <- "Personal Armor";
	gt.Const.Strings.PerkDescription.PTRPersonalArmor <- "Give your own armor some of that special treatment. Damage to armor is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color].\n[color=#0b0084]From the Blacksmith perk group[/color]";
	gt.Const.Strings.PerkName.PTRStrengthInNumbers <- "Strength in Numbers";
	gt.Const.Strings.PerkDescription.PTRStrengthInNumbers <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+2[/color] Melee Skill, Ranged Skil, Melee  Defense and Ranged Defense for each adjacent ally.\n[color=#0b0084]From the Militia perk group[/color]";
	gt.Const.Strings.PerkName.PTRTunnelVision <- "Tunnel Vision";
	gt.Const.Strings.PerkDescription.PTRTunnelVision <- "At night, vision is increased by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] and Melee Skill and Melee Defense are increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color].\n[color=#0b0084]From the Miner perk group[/color]";

	gt.Const.Strings.PerkName.PTRWearsItWell <- "Wears it Well";
	gt.Const.Strings.PerkDescription.PTRWearsItWell <- "Fatigue Recovery is increased by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of your current Maximum Fatigue.\n[color=#0b0084]From the Large perk group[/color]";
}
