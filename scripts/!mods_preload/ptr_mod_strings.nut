local gt = this.getroottable();

gt.Const.PTR.modStrings <- function()
{
	// Shield tree rework, will be moved to a new mod on release
	gt.Const.Strings.PerkName.STRPhalanx <- "Phalanx";
	gt.Const.Strings.PerkDescription.STRPhalanx <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Item Type: Shield[/color]\n\nWhen engaged in melee and equipped with a shield, gain [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Melee Defense per adjacent ally holding a shield who is also engaged in melee. When holding a shield and spear, additionally gain [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill per adjacent ally holding a shield who is also engaged in melee.\n[color=#0b0084]From the Shield perk group[/color]";
	gt.Const.Strings.PerkName.STRLineBreaker <- "Line Breaker";
	gt.Const.Strings.PerkDescription.STRLineBreaker <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Item Type: Shield[/color]\n\nUnlocks the \'Line Breaker\' skill which allows you to knock back an enemy and take their place, all in one action.\n[color=#0b0084]From the Shield perk group[/color]";
	gt.Const.Strings.PerkName.STRCoverAlly <- "Cover Ally";
	gt.Const.Strings.PerkDescription.STRCoverAlly <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Item Type: Shield[/color]\n\nUnlocks the \'Cover Ally\' skill which allows you to target an ally to allow them to move [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] tile ignoring Zone of Control on their turn.\n[color=#0b0084]From the Shield perk group[/color]";
	// end shield tree rework

	gt.Const.Strings.PerkDescription.LegendSmashingShields = "Abilities targeting shields do [color=" + this.Const.UI.Color.PositiveValue + "]15%[/color] more damage. If a shield is destroyed using Split Shield, [color=" + this.Const.UI.Color.PositiveValue + "]4[/color] Action Points are immediately regained.\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSmashingShields].Tooltip = gt.Const.Strings.PerkDescription.LegendSmashingShields;
	gt.Const.Strings.PerkName.PTRDismemberment <- "Dismemberment";
	gt.Const.Strings.PerkDescription.PTRDismemberment <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Damage Type: Cutting[/color]\n\nThe threshold to inflict injuries is reduced by a percentage equal to [color=" + this.Const.UI.Color.NegativeValue + "]35%[/color] of your Maximum Damage. Cutting attacks can now inflict injuries on Undead.\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeft <- "Heft";
	gt.Const.Strings.PerkDescription.PTRHeft <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Axe[/color]\n\nMaximum Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]30%[/color] of the Maximum Damage of the currently equipped axe.\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRBetweenTheEyes <- "Between the Eyes";
	gt.Const.Strings.PerkDescription.PTRBetweenTheEyes <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Attack Type: Melee[/color]\n\nUnlocks the \'Between the Eyes\' skill which allows you to gain [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] of your Melee Skill as additional chance to hit the head for your next attack. If the attack misses, the effect is wasted.\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRCull <- "Cull";
	gt.Const.Strings.PerkDescription.PTRCull <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Axe[/color]\n\nWhen using Axes, hits to the head will instantly kill a target whose remaining Hitpoints after the attack are below [color=" + this.Const.UI.Color.NegativeValue + "]40%[/color] health when using Two-Handed Axes and below [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] health when using One-Handed Axes. Ignores Nine Lives on the target.\n[color=#0b0084]From the Axe perk group[/color]";

	gt.Const.Strings.PerkName.PTRTargetPractice <- "Target Practice";
	gt.Const.Strings.PerkDescription.PTRTargetPractice <- "Swapping quivers of arrows or bolts never costs any Action Points. The Action Point cost of Aimed Shot is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color].\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRRangedSupremacy <- "Ranged Supremacy";
	gt.Const.Strings.PerkDescription.PTRRangedSupremacy <- "Ranged attacks have [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit against enemies wielding ranged weapons. Increases Vision and shooting range with Bows by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color].\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRArrowToTheKnee <- "Arrow to the Knee";
	gt.Const.Strings.PerkDescription.PTRArrowToTheKnee <- "Unlocks the \'Arrow to the Knee\' skill which causes all of your ranged attacks during a turn to apply a debuff on the target for [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] turns, reducing their Melee and Ranged Defense by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] each and requiring them to spend [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] additional Action Points per tile moved. The effects are halved on the second turn.\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRFlamingArrows <- "Flaming Arrows";
	gt.Const.Strings.PerkDescription.PTRFlamingArrows <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Bow[/color]\n\nA successful Aimed Shot will now light the target tile on fire and trigger a morale check with a penalty to Resolve equal to [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] of your Ranged Skill.\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRMarksmanship <- "Marksmanship";
	gt.Const.Strings.PerkDescription.PTRMarksmanship <- "When using a Ranged weapon, gain [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Ranged Skill as additional Minimum and Maximum Damage.\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRHipShooter <- "Hip Shooter";
	gt.Const.Strings.PerkDescription.PTRHipShooter <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Bow[/color]\n\nThe Action Point cost of Quick Shot is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color], but each subsequent Quick Shot in a turn builds [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] more Fatigue.\n[color=#0b0084]From the Bow perk group[/color]";

	gt.Const.Strings.PerkName.PTRSwordlike <- "Swordlike";
	gt.Const.Strings.PerkDescription.PTRSwordlike <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Cleaver[/color]\n\nCleave gains [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTROpenWounds <- "Deep Cuts";
	gt.Const.Strings.PerkDescription.PTROpenWounds <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Damage Type: Cutting[/color]\n\nEvery second attack against the same target will inflict an additional stack of Bleeding for [color=" + this.Const.UI.Color.PositiveValue + "]5[/color] damage. If any of the two attacks inflicted an injury, this damage is increased to [color=" + this.Const.UI.Color.PositiveValue + "]10[/color].\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRSanguinary <- "Sanguinary";
	gt.Const.Strings.PerkDescription.PTRSanguinary <- "The chance to inflict fatalities is increased by [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color]. Fatalities refund [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] of the Base Fatigue Cost of the skill used. Every attack against a Bleeding target improves this character\'s Morale by one level, and fatalities instantly set the Morale to Confident.\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRBloodlust <- "Bloodlust";
	gt.Const.Strings.PerkDescription.PTRBloodlust <- "Every attack against a Bleeding target reduces current Fatigue by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] per stack of Bleeding on the target and increases Fatigue Recovery by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] for one turn per stack of Bleeding on the target.\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRBloodbath <- "Bloodbath";
	gt.Const.Strings.PerkDescription.PTRBloodbath <- "Fatalities instantly restore [color=" + this.Const.UI.Color.PositiveValue + "]3[/color] Action Points. Has no limit on how many times it can proc per turn.\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRMauler <- "Mauler";
	gt.Const.Strings.PerkDescription.PTRMauler <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Cleaver[/color]\n\nAttacks do more damage, the less armor your target has. This bonus is [color=" + this.Const.UI.Color.PositiveValue + "]35%[/color] more damage at no armor, and [color=" + this.Const.UI.Color.PositiveValue + "]0%[/color] more damage at 100% armor remaining.\n[color=#0b0084]From the Cleaver perk group[/color]";

	gt.Const.Strings.PerkName.PTRThroughTheRanks <- "Through the Ranks";
	gt.Const.Strings.PerkDescription.PTRThroughTheRanks <- "Ranged attacks have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] reduced chance to inflict friendly fire.\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTREntrenched <- "Entrenched";
	gt.Const.Strings.PerkDescription.PTREntrenched <- "When using a ranged weapon and standing adjacent to an ally wielding a melee weapon who is not engaged in melee, gain [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Ranged Skill, Ranged Defense, and Resolve. The bonus increases by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] every turn up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] as long as you continue to start your turn adjacent to any ally wielding a melee weapon who is not engaged in melee.\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRPowerShot <- "Power Shot";
	gt.Const.Strings.PerkDescription.PTRPowerShot <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Crossbow or Firearm[/color]\n\nAttacks from crossbows and firearms have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to inflict Staggered for one turn.\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRIronSights <- "Iron Sights";
	gt.Const.Strings.PerkDescription.PTRIronSights <- "Ranged attacks have an additional [color=" + this.Const.UI.Color.PositiveValue + "]+15%[/color] chance to hit the head.\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRWindlassTraining <- "Muscle Memory";
	gt.Const.Strings.PerkDescription.PTRWindlassTraining <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Crossbow or Firearm[/color]\n\nThe Action Point Cost of reloading a crossbow is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] and that of reloading a Handgonne is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]2[/color].\n[color=#0b0084]From the Crossbow perk group[/color]";

	gt.Const.Strings.PerkName.PTRBetweenTheRibs <- "Between the Ribs";
	gt.Const.Strings.PerkDescription.PTRBetweenTheRibs <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Dagger[/color]\n\nWhen using daggers, attacks deal [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] more damage per ally surrounding the target.\n[color=#0b0084]From the Dagger perk group[/color]";
	gt.Const.Strings.PerkName.PTRLightWeapon <- "Light Weapon";
	gt.Const.Strings.PerkDescription.PTRLightWeapon <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Dagger[/color]\n\nWhen using a dagger, build up [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] less Fatigue and you gain [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] Action Points.\n[color=#0b0084]From the Dagger perk group[/color]";
	gt.Const.Strings.PerkName.PTRSwiftStabs <- "Swift Stabs";
	gt.Const.Strings.PerkDescription.PTRSwiftStabs <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Dagger[/color]\n\nA successful Puncture or Deathblow reduces the Action Point cost of the skill to [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] for the remainder of this turn. Only works with daggers equipped in the Mainhand.\n[color=#0b0084]From the Dagger perk group[/color]";

	gt.Const.Strings.PerkName.PTRSmallTarget <- "Small Target";
	gt.Const.Strings.PerkDescription.PTRSmallTarget <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit the head.\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeadSmasher <- "Head Smasher";
	gt.Const.Strings.PerkDescription.PTRHeadSmasher <- "The damage reduction from the target's Steel Brow perk is reduced from [color=" + this.Const.UI.Color.NegativeValue + "]100%[/color] to [color=" + this.Const.UI.Color.NegativeValue + "]75%[/color]. Damage inflicted from hits to the head is increased by [color=" + this.Const.UI.Color.PositiveValue + "]15%[/color].\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRFlailSpinner <- "Flail Spinner";
	gt.Const.Strings.PerkDescription.PTRFlailSpinner <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Flail[/color]\n\nAttacks with flails have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to do a free extra attack. This free attack does [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] reduced damage.\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRDeadlyPrecision <- "Deadly Precision";
	gt.Const.Strings.PerkDescription.PTRDeadlyPrecision <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Flail[/color]\n\nWhen using flails, an additional random [color=" + this.Const.UI.Color.PositiveValue + "]0-25%[/color] of damage ignores armor.\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRFromAllSides <- "From all Sides";
	gt.Const.Strings.PerkDescription.PTRFromAllSides <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Flail[/color]\n\nSuccessful hits from Flails progressively reduce the target's Melee and Ranged Defense by a stacking [color=" + this.Const.UI.Color.NegativeValue + "]-3[/color] for one turn. The effect is doubled if the attacks hit the head. Missed attacks reduce the target\'s defense by [color=" + this.Const.UI.Color.NegativeValue + "]-1[/color] instead.\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkDescription.LegendSmackdown = "Use your size and strength to bully your way into the prime position. Unlocks the \'Wind Up\' skill that prepares you to knock back and Baffle an opponent on your next swing. Also causes the target to spend [color=" + this.Const.UI.Color.NegativeValue + "]3[/color] additional Action Points per tile moved on their turn. \n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSmackdown].Tooltip = gt.Const.Strings.PerkDescription.LegendSmackdown;
	gt.Const.Strings.PerkName.PTRRattle <- "Rattle";
	gt.Const.Strings.PerkDescription.PTRRattle <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Damage Type: Blunt[/color]\n\nWhen attacking an opponent wearing armor, if an attack does at least [color=" + this.Const.UI.Color.NegativeValue + "]10[/color] damage to Hitpoints, apply the Rattled effect which reduces the target\'s damage output by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] turn.\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDeepImpact <- "Deep Impact";
	gt.Const.Strings.PerkDescription.PTRDeepImpact <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Damage Type: Blunt[/color]\n\nThe threshold to inflict injury from blunt damage attacks is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] of the currently equipped weapon's armor effectiveness. Blunt attacks can now apply injuries to the Undead.\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRSoftMetal <- "Soft Metal";
	gt.Const.Strings.PerkDescription.PTRSoftMetal <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Damage Type: Blunt[/color]\n\nWhen using Hammers an additional [color=" + this.Const.UI.Color.NegativeValue + "]+10%[/color] of the damage ignores armor. When using other blunt weapons, this bonus becomes active when the remaining combined head and body armor durability of the target is less than [color=" + this.Const.UI.Color.NegativeValue + "]60%[/color].\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDismantle <- "Dismantle";
	gt.Const.Strings.PerkDescription.PTRDismantle <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Hammer[/color]\n\nEvery successful hit with a hammer causes the target to receive a stacking [color=" + this.Const.UI.Color.NegativeValue + "]+15%[/color] ([color=" + this.Const.UI.Color.NegativeValue + "]+30%[/color] for Two-Handed hammers) additional damage ignoring armor from all sources for the remainder of the combat.\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDentArmor <- "Dent Armor";
	gt.Const.Strings.PerkDescription.PTRDentArmor <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Hammer[/color]\n\nAttacks from hammers have a chance to dent the target's armor, reducing their Action Points by [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] for the remainder of the combat. The chance is [color=" + this.Const.UI.Color.PositiveValue + "]66%[/color] for Two-Handed hammers and [color=" + this.Const.UI.Color.PositiveValue + "]33%[/color] for One-Handed hammers.\n\nOnly works when attacks hit armor whose maximum durability is greater than 200.\n[color=#0b0084]From the Hammer perk group[/color]";

	gt.Const.Strings.PerkName.PTRPushIt <- "Push It";
	gt.Const.Strings.PerkDescription.PTRPushIt <- "Fatigue damage inflicted from successful hits is doubled.\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeavyStrikes <- "Heavy Strikes";
	gt.Const.Strings.PerkDescription.PTRHeavyStrikes <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Mace[/color]\n\nSuccessful hits with maces always apply the Baffled effect.\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRBearDown <- "Bear Down";
	gt.Const.Strings.PerkDescription.PTRBearDown <- "Damage against enemies who have suffered a negative status effect such as Baffled, Dazed or Stunned etc. is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color].\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRConcussiveStrikes <- "Concussive Strikes";
	gt.Const.Strings.PerkDescription.PTRConcussiveStrikes <- "Hits to the head with any weapon apply Dazed for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn. This duration is increased to [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] turns for One-Handed Maces. Similar hits with a Two-Handed Mace stun the target for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn, and if the target is immune to stun, apply Dazed instead for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn.\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRBoneBreaker <- "Bone Breaker";
	gt.Const.Strings.PerkDescription.PTRBoneBreaker <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Mace[/color]\n\nWhen using a mace, attacks against stunned or rooted targets have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] ([color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] with Two-Handed maces) chance to inflict a guaranteed injury. If the damage was already sufficient to inflict an injury, it inflicts an additional injury. All maces do [color=" + this.Const.UI.Color.PositiveValue + "]15%[/color] increased damage to Undead.\n[color=#0b0084]From the Mace perk group[/color]";

	gt.Const.Strings.PerkName.PTRBolster <- "Bolster";
	gt.Const.Strings.PerkDescription.PTRBolster <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Polearm[/color]\n\nWhen wielding a Polearm, increase the Resolve of adjacent allies by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of your Melee Skill. If multiple polearm users with this perk are present, only the highest bonus applies.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRLeverage <- "Leverage";
	gt.Const.Strings.PerkDescription.PTRLeverage <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Two-Handed Melee[/color]\n\nWhen using Two-Handed weapons, attacks at 2 tiles range have [color=" + this.Const.UI.Color.PositiveValue + "]+20%[/color] chance to hit the head.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRIntimidate <- "Intimidate";
	gt.Const.Strings.PerkDescription.PTRIntimidate <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Polearm[/color]\n\nAttacks from Polearms reduce the Resolve of the target by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] of your Melee Skill. Multiple attacks do not stack.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRUtilitarian <- "Utilitarian";
	gt.Const.Strings.PerkDescription.PTRUtilitarian <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Two-Handed, Long[/color]\n\nWhen using a two-handed weapon with a range of 2 tiles, and wearing head and body armor with a total penalty to Maximum Fatigue up to [color=" + this.Const.UI.Color.NegativeValue + "]-15[/color], gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Skill and all skills build up [color=" + this.Const.UI.Color.NegativeValue + "]15%[/color] less Fatigue. For every 2 points of armor Fatigue above [color=" + this.Const.UI.Color.NegativeValue + "]-15[/color], you gain [color=" + this.Const.UI.Color.PositiveValue + "]1%[/color] increased Melee Damage but the other bonuses drop by [color=" + this.Const.UI.Color.NegativeValue + "]-1[/color] and can be negative at high enough armor fatigue.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRFollowUp <- "Follow Up";
	gt.Const.Strings.PerkDescription.PTRFollowUp <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Two-Handed Melee[/color]\n\nUnlocks the \'Follow Up\' skill which can be used when using a Two-Handed weapon and not engaged in melee. Until the start of your next turn, whenever an enemy in your attack range gets hit by an ally\'s melee attack, perform a free attack against that enemy with reduced damage. The damage dealt is [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] for the first attack and is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for every next attack up to a minimum of [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color].\n\nThe free attacks from Follow Up are non-lethal i.e. they cannot kill the target.\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRLongReach <- "Long Reach";
	gt.Const.Strings.PerkDescription.PTRLongReach <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Polearm[/color]\n\nWhen wielding a polearm, enemies within 2 tiles are considered surrounded by you for the purposes of hit-chance bonus for any allies attacking that target.\n[color=#0b0084]From the Polearm perk group[/color]";

	gt.Const.Strings.PerkName.PTRPatience <- "Patience";
	gt.Const.Strings.PerkDescription.PTRPatience <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Ranged Skill as long as you have not moved during your turn.\n[color=#0b0084]From the Sling perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeavyProjectiles <- "Heavy Projectiles";
	gt.Const.Strings.PerkDescription.PTRHeavyProjectiles <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Sling[/color]\n\nRanged attacks from Slings will stun the target on a hit to the head and apply Dazed on a hit to the body. If the target is immune to stun, hits to the head instead apply Dazed and hits to the body apply Baffled.\n[color=#0b0084]From the Sling perk group[/color]";
	gt.Const.Strings.PerkName.PTRSniper <- "Death From Afar";
	gt.Const.Strings.PerkDescription.PTRSniper <- "Damage from Ranged attacks is increased by [color=" + this.Const.UI.Color.PositiveValue + "]2%[/color] per tile the target is away from you.\n[color=#0b0084]From the Sling perk group[/color]";

	gt.Const.Strings.PerkName.PTRPointyEnd <- "Pointy End";
	gt.Const.Strings.PerkDescription.PTRPointyEnd <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Damage Type: Piercing, Melee[/color]\n\nMelee piercing attacks against an enemy without a shield gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRImpaler <- "Impaler";
	gt.Const.Strings.PerkDescription.PTRImpaler <- "Piercing attacks have a [color=" + this.Const.UI.Color.NegativeValue + "]15%[/color] lower damage threshold to inflict injury.\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRThroughTheGaps <- "Through the Gaps";
	gt.Const.Strings.PerkDescription.PTRThroughTheGaps <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Damage Type: Piercing, Melee[/color]\n\nMelee piercing attacks ignore an additional [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of the target's armor.\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRTwoForOne <- "Two for One";
	gt.Const.Strings.PerkDescription.PTRTwoForOne <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Spear[/color]\n\nWhen using a spear, the Action Point cost of Thrust, Prong and Glaive Slash is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color].\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRABetterGrip <- "A Better Grip";
	gt.Const.Strings.PerkDescription.PTRABetterGrip <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Spear[/color]\n\nWhen using a shield with a One-Handed spear or glaive, gain [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill and [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Defense.\n\nWhen using One-Handed spears with the offhand free, the range of Thrust is increased to 2 tiles. Additionally, with the offhand free, One-Handed spears and glaives now gain benefit from the Reach Advantage perk.\n\nWhen using Two-Handed spears, Melee Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color].\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRKingOfAllWeapons <- "King of all Weapons";
	gt.Const.Strings.PerkDescription.PTRKingOfAllWeapons <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Spear[/color]\n\nWhen starting your turn with a Spear equipped, the first Thrust or Prong during your turn costs no Action Points and builds no Fatigue, but does [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] reduced Damage.\n[color=#0b0084]From the Spear perk group[/color]";

	gt.Const.Strings.PerkName.PTRVersatileWeapon <- "Versatile Weapon";
	gt.Const.Strings.PerkDescription.PTRVersatileWeapon <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Sword[/color]\n\nWhen wielding a sword, gain [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] increased damage, [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] armor penetration and [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] increased armor effectiveness.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkDescription.Feint = "[color=" + this.Const.UI.Color.NegativeValue + "]Required Attack Type: Melee[/color]\n\nIf an attack misses, [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] of the Base Fatigue Cost of the skill is refunded, and you leave your opponent parried, lowering their defenses by [color=" + this.Const.UI.Color.NegativeValue + "]-10[/color].\n[color=#0b0084]From the Sword perk group[/color]",
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Feint].Tooltip = gt.Const.Strings.PerkDescription.Feint;
	gt.Const.Strings.PerkName.PTRExploitOpening <- "Exploit Opening";
	gt.Const.Strings.PerkDescription.PTRExploitOpening <- "Whenever an opponent misses a Melee attack against you, they are affected by the \'Exploitable Opening\' effect until their next turn, which gives you [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit against them.\n\nMakes the \'Riposte\' skill available on the Shamshir and One-Handed versions of Saif and Scimitar.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeightenedReflexes <- "Heightened Reflexes";
	gt.Const.Strings.PerkDescription.PTRHeightenedReflexes <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Sword[/color]\n\nGain [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] of your Base Melee Defense as Initiative and percentage Fatigue Cost Reduction for weapon skills when wearing armor with a total penalty to Maximum Fatigue of [color=" + this.Const.UI.Color.NegativeValue + "]-35[/color]. For every point of deviation from [color=" + this.Const.UI.Color.NegativeValue + "]-35[/color], the bonuses increase or decrease by [color=" + this.Const.UI.Color.PositiveValue + "]1%[/color]. With armors of higher Fatigue Penalty, the Initiative bonus is decreased but Fatigue Cost Reduction is increased, and with armors of lower Fatigue Penalty, the Initiative bonus is increased but the Fatigue Cost Reduction is decreased.\n\nThe bonuses cannot be negative and cannot increase beyond [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] of Base Melee Defense.\n\nBrawny does not affect this perk.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRTempo <- "Tempo";
	gt.Const.Strings.PerkDescription.PTRTempo <- "Every attack against a target who acts after you in the current round increases your Initiative by [color=" + this.Const.UI.Color.PositiveValue + "]+15[/color]. The bonus lasts until the start of your next turn.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRKata <- "Kata";
	gt.Const.Strings.PerkDescription.PTRKata <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Sword[/color]\n\nUnlocks the \'Kata Step\' skill which, immediately after a successful attack, allows you to move one tile ignoring zone of control with reduced Action Point cost. However, the target tile for the movement must be adjacent to an enemy.\n\nOnly works with Two-Handed swords or with One-Handed swords with the offhand free.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTREnGarde <- "En garde";
	gt.Const.Strings.PerkDescription.PTREnGarde <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Sword[/color]\n\nWhen wielding a sword, if you have not moved from your position during your turn, use Riposte freely at the end of your turn if your weapon has Riposte. If your weapon does not have Riposte, gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Defense instead until the start of your next turn.\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRBloodyHarvest <- "Bloody Harvest";
	gt.Const.Strings.PerkDescription.PTRBloodyHarvest <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Attack Type: Melee AOE[/color]\n\nMelee AOE attacks gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit and do [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] increased damage.\n[color=#0b0084]From the Two-Handed Weapons perk group[/color]";
	gt.Const.Strings.PerkName.PTRFormidableApproach <- "Formidable Approach";
	gt.Const.Strings.PerkDescription.PTRFormidableApproach <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Two-Handed Melee[/color]\n\nWhen wielding a Two-Handed weapon, reduce the Melee Skill and Melee Defense of any enemy who enters your zone of control by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] of your Melee Skill. The debuff lasts until the enemy exits your zone of control or successfully hits you.\n\nOnly has half the effect against enemies with Two-Handed weapons, and does not work if the enemy also has this perk.\n[color=#0b0084]From the Two-Handed Weapons perk group[/color]";
	gt.Const.Strings.PerkName.PTRSweepingStrikes <- "Sweeping Strikes";
	gt.Const.Strings.PerkDescription.PTRSweepingStrikes <- "AOE attacks lower the Melee Skill of any target hit for one turn. This reduction is [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] for targets with One-Handed weapons and [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for targets with Two-Handed weapons. Only half of this reduction applies if you act after the target in the current round.\n[color=#0b0084]From the Two-Handed Weapons perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendOnslaught = "Move with offputting speed, feinting, poking, battering and catching your opponents off guard. Grants a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] ([color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] when using a Staff) chance to apply Baffled on every hit, when your Initiative is higher than that of your opponent. Does not work against enemies who are immune to Stun. [color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendOnslaught].Tooltip = gt.Const.Strings.PerkDescription.LegendOnslaught;
	gt.Const.Strings.PerkName.PTREasyTarget <- "Easy Target";
	gt.Const.Strings.PerkDescription.PTREasyTarget <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Staff[/color]\n\nSkills build up [color=" + this.Const.UI.Color.NegativeValue + "]15%[/color] less Fatigue when using Staves. All attacks with Staves have a [color=" + this.Const.UI.Color.PositiveValue + "]33%[/color] chance ([color=" + this.Const.UI.Color.PositiveValue + "]66%[/color] with Staff Daze) to apply Staggered on a hit. This chance is 100% if the target already has 2 negative status effects (stunned, dazed etc.).\n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Strings.PerkDescription.LegendMasteryStaves = "Master the art of fighting with staves. Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.\n\nIncreases the chance to apply Dazed.\n\n Reduces the costs for Missile, Revolt, Entice, Chain Lightning and Firefield.\n\nStaff Sweep gains [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit.\n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendMasteryStaves].Tooltip = gt.Const.Strings.PerkDescription.LegendMasteryStaves;

	gt.Const.Strings.PerkDescription.LegendSpecStaffStun = "Master the movements required to spin your staff in a great flourish that lands with additional force. Any strike with a staff that would normally daze, also stuns and staggers.\n\nStaff Sweep now applies Dazed.\n\nWhack a\' Smack gains [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n[color=#0b0084]From the Staff perk group[/color]",
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecStaffStun].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecStaffStun;
	gt.Const.Strings.PerkName.PTRWearThemDown <- "Wear them Down";
	gt.Const.Strings.PerkDescription.PTRWearThemDown <- "Gain a chance that an enemy requires two successful rolls to hit you. This chance is [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] per negative status effect affecting the enemy (e.g. dazed, baffled etc.).\n\nSuccessful attacks with Staves apply a negative status effect which cause the target to build [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] additional Fatigue on skills for 1 turn.\n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Strings.PerkName.PTRWhackASmack <- "Whack a\' Smack";
	gt.Const.Strings.PerkDescription.PTRWhackASmack <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Staff[/color]\n\nWhile wielding a staff, perform a free attack against anyone who misses an attack against you. This free attack has a [color=" + this.Const.UI.Color.NegativeValue + "]-20%[/color] chance to hit. Applies Baffled on the target if successful.\n[color=#0b0084]From the Staff perk group[/color]";

	gt.Const.Strings.PerkName.PTRHybridization <- "Hybridization";
	gt.Const.Strings.PerkDescription.PTRHybridization <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Melee Skill as Ranged Skill and [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Ranged Skill as Melee Skill.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkName.PTRMomentum <- "Momentum";
	gt.Const.Strings.PerkDescription.PTRMomentum <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Throwing[/color]\n\nThrowing weapons do [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] more damage per tile moved towards the target before throwing.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkName.PTROpportunist <- "Opportunist";
	gt.Const.Strings.PerkDescription.PTROpportunist <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Throwing[/color]\n\nThe first time you stand over an enemy's corpse, gain [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] ammo and restore [color=" + this.Const.UI.Color.PositiveValue + "]4[/color] Action Points.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkDescription.CloseCombatArcher = "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: Throwing[/color]\n\nWhen attacking a target at 2 tiles, gain [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] of your Melee Skill as additional chance to hit.\n\nFor piercing type throwing weapons, armor penetrating damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] of your Ranged Skill.\n\nFor cutting type throwing weapons, armor effectiveness is increased by [color=" + this.Const.UI.Color.PositiveValue + "]40%[/color] of your Ranged Skill.\n\nFor blunt type throwing weapons, has a [color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] chance to apply Staggered, and if the target is already Staggered, to apply Stunned.\n\nOnly provides half the bonuses when attacking a target at 3 tiles, and no bonus at longer distances.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.CloseCombatArcher].Tooltip = gt.Const.Strings.PerkDescription.CloseCombatArcher;
	gt.Const.Strings.PerkName.PTRNailedIt <- "Nailed It";
	gt.Const.Strings.PerkDescription.PTRNailedIt <- "The chance to hit the head with ranged attacks is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] but reduced by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] per tile of distance between you and the target.\n[color=#0b0084]From the Throwing perk group[/color]";

	gt.Const.Strings.PerkName.PTRSurvivalInstinct <- "Survival Instinct";
	gt.Const.Strings.PerkDescription.PTRSurvivalInstinct <- "Melee and Ranged Defense are increased by a stacking [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] whenever you get hit. The bonus lasts until the start of your next turn.\n[color=#0b0084]From the Resilient perk group[/color]";

	gt.Const.Strings.PerkDescription.CoupDeGrace = "Damage against targets who have sustained any injury effects, like a broken arm is increased by [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color]. Additionally, against targets who are stunned, netted, sleeping or debilitated, damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color]. Both bonuses stack.\n[color=#0b0084]From the Vicious perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.CoupDeGrace].Tooltip = gt.Const.Strings.PerkDescription.CoupDeGrace;
	gt.Const.Strings.PerkDescription.LegendAssuredConquest = "Resolve is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] at all times. Additionally, at positive morale checks it is further increased by [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color]. When at Confident Morale, these bonuses are doubled, and additionally Melee Skill, Ranged Skill, Melee Defense, and Ranged Defense are increased by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color].\n[color=#0b0084]From the Vicious perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendAssuredConquest].Tooltip = gt.Const.Strings.PerkDescription.LegendAssuredConquest;

	gt.Const.Strings.PerkName.PTRDiscoveredTalent <- "Discovered Talent";
	gt.Const.Strings.PerkDescription.PTRDiscoveredTalent <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] Star to the talents in all attributes and then instantly gain a levelup to increase this character's attributes using normal rolls with talents.\n\nCannot increase the talent in an attribute beyond [color=" + this.Const.UI.Color.NegativeValue + "]3[/color] stars. The increased Talent stars only apply to levelups gained from Level 6 onwards.\n[color=#0b0084]From the Talented perk group[/color]";
	gt.Const.Strings.PerkName.PTRKnowTheirWeakness <- "Know their Weakness";
	gt.Const.Strings.PerkDescription.PTRKnowTheirWeakness <- "After killing an enemy, Melee Skill is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] and Ranged Skill by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color], up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]30%[/color] for each. The bonus drops by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] if you get hit.\n[color=#0b0084]From the Talented perk group[/color]";
	gt.Const.Strings.PerkName.PTRRisingStar <- "Rising Star";
	gt.Const.Strings.PerkDescription.PTRRisingStar <- "Experience Gain is increased by [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] until Level 13, and by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] after that. At Level 13, gain [color=" + this.Const.UI.Color.PositiveValue + "]2[/color] perk points.\n[color=#0b0084]From the Talented perk group[/color]";

	gt.Const.Strings.PerkName.PTRDynamicDuo <- "Dynamic Duo";
	gt.Const.Strings.PerkDescription.PTRDynamicDuo <- "This perk only works when there is only one ally within a distance of 2 tiles, and that ally has no other ally within a distance of 2 tiles except you. For this purpose, only characters belonging to your company are considered.\n\nGain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Initiative, [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Resolve, and [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] Melee Defense. If your ally also has this perk, these bonuses are doubled and whenever that ally gets attacked by an enemy in melee, your next melee attack against that enemy has [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n\nWhen standing adjacent to that ally, gain the Rotation skill even if you do not have the Rotation perk. The Fatigue Cost of the first use of Rotation on your turn is halved, and if your ally also has this perk, it additionally costs no Action Points.\n[color=#0b0084]From the Fast perk group[/color]";
	gt.Const.Strings.PerkName.PTRFreshAndFurious <- "Fresh and Furious";
	gt.Const.Strings.PerkDescription.PTRFreshAndFurious <- "Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] when at [color=" + this.Const.UI.Color.PositiveValue + "]0%[/color] Fatigue. This bonus reduces to [color=" + this.Const.UI.Color.NegativeValue + "]0%[/color] when your Fatigue approaches [color=" + this.Const.UI.Color.NegativeValue + "]30%[/color] of Maximum Fatigue.\n[color=#0b0084]From the Fast perk group[/color]";

	gt.Const.Strings.PerkName.PTRUnstoppable <- "Unstoppable";
	gt.Const.Strings.PerkDescription.PTRUnstoppable <- "Gain a stacking bonus to Melee Skill and Melee Damage for every successful attack. Each stack provides [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill and increases Melee Damage by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color], up to a maximum of 10 stacks. Attacks at 2 tiles range only grant a stack after two successful hits. You lose half of the stacks if you miss an attack or if you get hit.\n[color=#0b0084]From the Unstoppable perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendBackToBasics = "Gain a bonus to key combat attributes depending on how far their Base Values are below a certain thershold. These attributes are increased by a percentage equal to the number of points they are below the threshold. The threshold for Melee Skill and Ranged Skill is [color=" + this.Const.UI.Color.PositiveValue + "]70[/color], and for Melee Defense, Ranged Defense, and Resolve is [color=" + this.Const.UI.Color.PositiveValue + "]40[/color].\n\nAlso grants [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Training in camp.\n[color=#0b0084]From the Trained perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendBackToBasics].Tooltip = gt.Const.Strings.PerkDescription.LegendBackToBasics;
	gt.Const.Strings.PerkName.PTRVigilant <- "Vigilant";
	gt.Const.Strings.PerkDescription.PTRVigilant <- "At the end of your turn, gain Melee Skill and Melee Defense equal to your remaining Action Points up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]9[/color]. The bonus lasts until the end of your next turn.\n[color=#0b0084]From the Trained perk group[/color]";
	gt.Const.Strings.PerkName.PTRTheRushOfBattle <- "The Rush of Battle";
	gt.Const.Strings.PerkDescription.PTRTheRushOfBattle <- "When dodging or getting hit by an attack, gain a stacking [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] reduction to the Fatigue Cost of  skills during your next turn, up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color].\n[color=#0b0084]From the Trained perk group[/color]";
	gt.Const.Strings.PerkDescription.PerfectFocus = "Unlocks the \'Perfect Focus\' skill, which doubles your Action Points for your current turn. Each subsequent attack under this effect does a stacking [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] less Damage and builds [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] more Fatigue. On your next turn you will be Exhausted which lowers damage, increases Fatigue build-up, and reduces the Action Points available during that turn.\n\nNot usable when Inspired by an ally\'s Inspire skill.\n[color=#0b0084]From the Trained perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.PerfectFocus].Tooltip = gt.Const.Strings.PerkDescription.PerfectFocus;

	gt.Const.Strings.PerkName.PTRPersonalArmor <- "Personal Armor";
	gt.Const.Strings.PerkDescription.PTRPersonalArmor <- "Give your own armor some of that special treatment. Damage to armor is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color].\n[color=#0b0084]From the Blacksmith perk group[/color]";
	gt.Const.Strings.PerkName.PTRStrengthInNumbers <- "Strength in Numbers";
	gt.Const.Strings.PerkDescription.PTRStrengthInNumbers <- "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+2[/color] Melee Skill, Ranged Skill, Melee  Defense and Ranged Defense for each adjacent ally.\n[color=#0b0084]From the Militia perk group[/color]";
	gt.Const.Strings.PerkName.PTRTunnelVision <- "Tunnel Vision";
	gt.Const.Strings.PerkDescription.PTRTunnelVision <- "At night, vision is increased by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] and Melee Skill and Melee Defense are increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color].\n[color=#0b0084]From the Miner perk group[/color]";

	gt.Const.Strings.PerkName.PTRPromisedPotential <- "Promised Potential";
	gt.Const.Strings.PerkDescription.PTRPromisedPotential <- "This perk remains inert until level 11. Upon reaching level 11, it has a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance of being replaced with \'Realized Potential\' which changes this character\'s background to Sellsword, increases all attributes by [color=" + this.Const.UI.Color.PositiveValue + "]+15[/color], unlocks new perk groups, and refunds all perk points, including the one spent on this perk. If unsuccessful, it is replaced by \'Failed Potential\' which does nothing.\n\nThe success chance is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] per perk point already spent before picking this perk. Perks obtained due to starting origin do not count towards reducing this chance.\n[color=#0b0084]From the Pauper perk group[/color]";
	gt.Const.Strings.PerkName.PTRRealizedPotential <- "Realized Potential";
	gt.Const.Strings.PerkDescription.PTRRealizedPotential <- "From rags to riches! This character has truly come a long way. Who was once a dreg of society and is now a full-fledged mercenary.\n\nAll perk points have been refunded, and attributes increased.\n[color=#0b0084]From the Pauper perk group[/color]";
	gt.Const.Strings.PerkName.PTRFailedPotential <- "Failed Potential";
	gt.Const.Strings.PerkDescription.PTRFailedPotential <- "This character looked promising, but either due to bad luck or simply lack of talent, they have not shown the potential you thought they had. This perk does nothing.\n[color=#0b0084]From the Pauper perk group[/color]";
	gt.Const.Strings.PerkName.PTRPunchingBag <- "Punching Bag";
	gt.Const.Strings.PerkDescription.PTRPunchingBag <- "This character is used to be beaten down. Trigger no Morale check on receiving damage.\n\nIf Realized Potential is a success, this perk becomes permanent and the perk point is refunded.\n[color=#0b0084]From the Pauper perk group[/color]";
	gt.Const.Strings.PerkName.PTRTraumaSurvivor <- "Trauma Survivor";
	gt.Const.Strings.PerkDescription.PTRTraumaSurvivor <- "This character\'s life has been a living hell, and they have gained a certain resilience. Resolve is increased by [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] against fear, panic and mind control effects.\n\nIf Realized Potential is a success, this perk becomes permanent and the perk point is refunded.\n[color=#0b0084]From the Pauper perk group[/color]";

	gt.Const.Strings.PerkName.PTRBulwark <- "Bulwark";
	gt.Const.Strings.PerkDescription.PTRBulwark <- "Resolve is increased by [color=" + this.Const.UI.Color.PositiveValue + "]2%[/color] of the combined current durability of head and body armor. This bonus is doubled against negative morale checks except mental attacks.\n[color=#0b0084]From the Heavy Armor perk group[/color]";
	gt.Const.Strings.PerkName.PTRManOfSteel <- "Man of Steel";
	gt.Const.Strings.PerkDescription.PTRManOfSteel <- "Armor penetrating damage to Hitpoints received from Ranged attacks is reduced by up to [color=" + this.Const.UI.Color.PositiveValue + "]30%[/color]. This bonus increases exponentially by wearing head and body armor of higher Maximum Durability.\n[color=#0b0084]From the Heavy Armor perk group[/color]";

	gt.Const.Strings.PerkName.PTROffhandTraining <- "Offhand Training";
	gt.Const.Strings.PerkDescription.PTROffhandTraining <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Offhand Type: Buckler, Parrying Dagger, or Tool[/color]\n\nEquipping a Buckler or Parrying Dagger in the offhand no longer disables the armor penetration bonus from the Duelist perk.\n\nOnce per turn, if you have not already switched any weapon or tool, switching a tool in your offhand costs no Action Points. Also works when switching from a Buckler or Parrying Dagger to a tool. Does not stack with Quick Hands.\n[color=#0b0084]From the One-Handed Weapons perk group[/color]";
	gt.Const.Strings.PerkDescription.Duelist = "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: One-Handed, Melee[/color]\n\n" + gt.Const.Strings.PerkDescription.Duelist;
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Duelist].Tooltip = gt.Const.Strings.PerkDescription.Duelist;
	gt.Const.Strings.PerkName.PTRWeaponMaster <- "Weapon Master";
	gt.Const.Strings.PerkDescription.PTRWeaponMaster <- "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: One-Handed Melee[/color]\n\nGrants the bonuses of the weapon mastery perks for all One-Handed Melee weapons whose perk groups this character has access to.\n\nOnce per turn, switching from one One-Handed Melee weapon to another costs no Action Points. Does not stack with Quick Hands.\n\nOnly works if you have picked at least one of the following weapon mastery perks: Axe, Cleaver, Dagger, Flail, Hammer, Mace, Spear, Sword.\n[color=#0b0084]From the One-Handed Weapons perk group[/color]";

	gt.Const.Strings.PerkName.PTRFruitsOfLabor <- "Fruits of Labor";
	gt.Const.Strings.PerkDescription.PTRFruitsOfLabor <- "Hitpoints, Maximum Fatigue, and Initiative are increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] each.\n[color=#0b0084]From the Laborer perk group[/color]";
	gt.Const.Strings.PerkName.PTRWearsItWell <- "Wears it Well";
	gt.Const.Strings.PerkDescription.PTRWearsItWell <- "Fatigue Recovery is increased by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of your Maximum Fatigue after gear.\n[color=#0b0084]From the Laborer perk group[/color]";

	gt.Const.Strings.PerkName.PTRMenacing <- "Menacing";
	gt.Const.Strings.PerkDescription.PTRMenacing <- "Lower the Resolve of adjacent enemies by [color=" + this.Const.UI.Color.PositiveValue + "]-5[/color].\n[color=#0b0084]From the Raider perk group[/color]";
	gt.Const.Strings.PerkName.PTRBully <- "Bully";
	gt.Const.Strings.PerkDescription.PTRBully <- "Melee Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] per level of difference between your and your target\'s Morale as long as your Morale is higher than that of your target.\n[color=#0b0084]From the Raider perk group[/color]";

	gt.Const.Strings.PerkName.PTRPatternRecognition <- "Pattern Recognition";
	gt.Const.Strings.PerkDescription.PTRPatternRecognition <- "Every attack against a target and every attack against you from that target increases your Melee Skill and Melee Defense against that target by a stacking [color=" + this.Const.UI.Color.PositiveValue + "]+3[/color] for the remainder of the combat.\n[color=#0b0084]From the Soldier perk group[/color]";
	gt.Const.Strings.PerkName.PTRExudeConfidence <- "Exude Confidence";
	gt.Const.Strings.PerkDescription.PTRExudeConfidence <- "At the start of your turn, improve the Morale state of adjacent allies by [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] as long as their Morale state is lower than yours.\n[color=#0b0084]From the Soldier perk group[/color]";
	gt.Const.Strings.PerkName.PTRProfessional <- "Professional";
	gt.Const.Strings.PerkDescription.PTRProfessional <- "Grants the benefits of the Shield Expert, Weapon Master, Reach Advantage, and Bloody Harvest perks without requiring these perks to be picked.\n[color=#0b0084]From the Soldier perk group[/color]";

	gt.Const.Strings.PerkName.PTRAlwaysAnEntertainer <- "Always An Entertainer";
	gt.Const.Strings.PerkDescription.PTRAlwaysAnEntertainer <- "Once per day, when you visit a non-military settlement, gain between [color=" + this.Const.UI.Color.PositiveValue + "]20[/color] and [color=" + this.Const.UI.Color.PositiveValue + "]40[/color] gold. For each level this character is above 1, these values are increased by [color=" + this.Const.UI.Color.PositiveValue + "]+2[/color]. The values are doubled for medium-sized settlements and tripled for large settlements.\n\nIf multiple characters with this perk are present, only one of them will entertain in a given city on a given day, and the others will have to entertain in other cities.\n[color=#0b0084]From the Entertainer perk group[/color]";
	gt.Const.Strings.PerkName.PTRPaintASmile <- "Paint a Smile";
	gt.Const.Strings.PerkDescription.PTRPaintASmile <- "At the start of every new day, improve the Mood of the character with the lowest Mood in your roster.\n[color=#0b0084]From the Entertainer perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendFreedomOfMovement = "Being unencumbered allows you to move and strike with great accuracy. Melee Skill and Melee Defense are increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Maximum Fatigue after gear. These bonuses drop exponentially when wearing head and body armor with a total penalty to Maximum Fatigue greater than [color=" + this.Const.UI.Color.NegativeValue + "]-15[/color].\n[color=#0b0084]From the Light Armor perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendFreedomOfMovement].Tooltip = gt.Const.Strings.PerkDescription.LegendFreedomOfMovement;

	gt.Const.Strings.PerkDescription.LegendClarity = "A well honed mind can perceive more in each instant, making time appear slower in key instants of need. Grants [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] Action Point. Does not work if you have Berserk or are dazed, drunk, hungover, taunted, staggered, horrified, concused or fleeing. Gain an additional [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] Action Point if under the effect of potions that improve cognition: Iron Will, Lionheart, Cat, Recovery or Hexen Ichor. \n[color=#0b0084]From the Calm perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendClarity].Tooltip = gt.Const.Strings.PerkDescription.LegendClarity;

	gt.Const.Strings.PerkDescription.BattleForged = "Specialize in heavy armor! Armor damage taken is reduced by a percentage equal to [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of the current total armor value of both body and head armor. The heavier your armor and helmet, the more you benefit.\n\nDoes not affect damage from mental attacks or status effects, but can help to avoid receiving them.\n[color=#0b0084]From the Heavy Armor perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.BattleForged].Tooltip = gt.Const.Strings.PerkDescription.BattleForged;

	gt.Const.Strings.PerkDescription.LastStand = "Gain [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] additional Melee and Ranged Defense for every [color=" + this.Const.UI.Color.NegativeValue + "]2%[/color] of missing hitpoints below [color=" + this.Const.UI.Color.NegativeValue + "]66%[/color]. When below [color=" + this.Const.UI.Color.NegativeValue + "]40%[/color] health this character becomes immune to the effects of subsequent injuries, and is not upset by health losses.\n[color=#0b0084]From the Resilient perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LastStand].Tooltip = gt.Const.Strings.PerkDescription.LastStand;

	gt.Const.Strings.PerkDescription.Indomitable = "Unlocks the \'Indomitable\' skill which grants a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] damage reduction and immunity to being stunned, knocked back, grabbed, swallowed or culled for one turn.\n[color=#0b0084]From the Sturdy perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Indomitable].Tooltip = gt.Const.Strings.PerkDescription.Indomitable;

	gt.Const.Strings.PerkDescription.QuickHands = "Looking for this? Swapping any item in battle a free action with no Action Point cost once every turn. Does not work when swapping a shield, or when swapping from one Two-Handed melee weapon to another Two-Handed melee weapon.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.QuickHands].Tooltip = gt.Const.Strings.PerkDescription.QuickHands;

	gt.Const.Strings.PerkDescription.LegendRelax = "Soothe an ally, doubling their Fatigue Recovery on their next turn.\n\nCannot be used when engaged in melee or on the same target two turns in a row.";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendRelax].Tooltip = gt.Const.Strings.PerkDescription.LegendRelax;

	gt.Const.Strings.PerkDescription.DoubleStrike = "[color=" + this.Const.UI.Color.NegativeValue + "]Required Attack Type: Melee[/color]\n\n" + gt.Const.Strings.PerkDescription.DoubleStrike;
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.DoubleStrike].Tooltip = gt.Const.Strings.PerkDescription.DoubleStrike;

	gt.Const.Strings.PerkDescription.SpecSword += "\n\nThe threshold to inflict injury when using a Shamshir or the One-Handed versions of Saif and Scimitar is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color].\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.SpecSword].Tooltip = gt.Const.Strings.PerkDescription.SpecSword;

	local throwingArray = split(gt.Const.Strings.PerkDescription.SpecThrowing, "[");
	throwingArray.pop();
	throwingArray.pop();
	for (local i = 0; i < throwingArray.len() - 1; i++)
	{
		throwingArray[i] += "[";
	}
	gt.Const.Strings.PerkDescription.SpecThrowing = "";
	foreach (s in throwingArray)
	{
		gt.Const.Strings.PerkDescription.SpecThrowing += s;
	}
	gt.Const.Strings.PerkDescription.SpecThrowing += "\nThrowing Spear now ignores the damage reduction from the target\'s Shield Expert perk.\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.SpecThrowing].Tooltip = gt.Const.Strings.PerkDescription.SpecThrowing;

	local changePerkGroupInTooltip = function (_tooltip, _newPerkGroup = "")
	{
		local strArray = split(_tooltip, "[");

		strArray.pop();
		strArray.apply(@(a) a += "[" );

		strArray[strArray.len()-1] = "color=#0b0084]From the " + _newPerkGroup + " perk group[/color]";

		if (strArray[0].find("color=") != null)
		{
			strArray[0] = "[" + strArray[0];
		}

		local ret = "";
		foreach (s in strArray)
		{
			ret += s;
		}

		return ret;
	};

	gt.Const.Strings.PerkDescription.ReachAdvantage = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.ReachAdvantage, "Two-Handed Weapons");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.ReachAdvantage].Tooltip = gt.Const.Strings.PerkDescription.ReachAdvantage;
	gt.Const.Strings.PerkDescription.ShieldExpert = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.ShieldExpert, "One-Handed Weapons and Shield");
	gt.Const.Strings.PerkDescription.ShieldExpert += "[color=#0b0084]s[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.ShieldExpert].Tooltip = gt.Const.Strings.PerkDescription.ShieldExpert;
	gt.Const.Strings.PerkDescription.Duelist = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Duelist, "One-Handed Weapons");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Duelist].Tooltip = gt.Const.Strings.PerkDescription.Duelist;

	gt.Const.Strings.PerkDescription.Bullseye = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Bullseye, "Ranged Weapons");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Bullseye].Tooltip = gt.Const.Strings.PerkDescription.Bullseye;
	gt.Const.Strings.PerkDescription.LegendWindReader = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendWindReader, "Ranged Weapons");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendWindReader].Tooltip = gt.Const.Strings.PerkDescription.LegendWindReader;
	gt.Const.Strings.PerkDescription.Ballistics = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Ballistics, "Ranged Weapons");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Ballistics].Tooltip = gt.Const.Strings.PerkDescription.Ballistics;

	gt.Const.Strings.PerkDescription.NineLives = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.NineLives, "Resilient");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.NineLives].Tooltip = gt.Const.Strings.PerkDescription.NineLives;
	gt.Const.Strings.PerkDescription.HoldOut = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.HoldOut, "Resilient");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.HoldOut].Tooltip = gt.Const.Strings.PerkDescription.HoldOut;
	# gt.Const.Strings.PerkDescription.LastStand = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LastStand, "Resilient");
	# gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LastStand].Tooltip = gt.Const.Strings.PerkDescription.LastStand;

	gt.Const.Strings.PerkDescription.SunderingStrikes = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.SunderingStrikes, "Axe, Blacksmith, and Miner");
	gt.Const.Strings.PerkDescription.SunderingStrikes += "[color=#0b0084]s[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.SunderingStrikes].Tooltip = gt.Const.Strings.PerkDescription.SunderingStrikes;

	gt.Const.Strings.PerkDescription.Overwhelm = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Overwhelm, "Dagger");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Overwhelm].Tooltip = gt.Const.Strings.PerkDescription.Overwhelm;

	gt.Const.Strings.PerkDescription.PushTheAdvantage += "\n[color=#0b0084]From the Mace perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.PushTheAdvantage].Tooltip = gt.Const.Strings.PerkDescription.PushTheAdvantage;

	gt.Const.Strings.PerkDescription.Lookout = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Lookout, "Sling");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Lookout].Tooltip = gt.Const.Strings.PerkDescription.Lookout;

	gt.Const.Strings.PerkDescription.LegendOnslaught = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendOnslaught, "Staff");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendOnslaught].Tooltip = gt.Const.Strings.PerkDescription.LegendOnslaught;

	gt.Const.Strings.PerkDescription.Rebound = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Rebound, "Agile");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Rebound].Tooltip = gt.Const.Strings.PerkDescription.Rebound;

	gt.Const.Strings.PerkDescription.LoneWolf = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LoneWolf, "Vicious");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LoneWolf].Tooltip = gt.Const.Strings.PerkDescription.LoneWolf;
	gt.Const.Strings.PerkDescription.Fearsome = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Fearsome, "Vicious");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Fearsome].Tooltip = gt.Const.Strings.PerkDescription.Fearsome;

	gt.Const.Strings.PerkDescription.Backstabber = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Backstabber, "Dagger and Devious");
	gt.Const.Strings.PerkDescription.Backstabber += "[color=#0b0084]s[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Backstabber].Tooltip = gt.Const.Strings.PerkDescription.Backstabber;

	gt.Const.Strings.PerkDescription.LegendUntouchable += "\n[color=#0b0084]From the Devious perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendUntouchable].Tooltip = gt.Const.Strings.PerkDescription.LegendUntouchable;

	gt.Const.Strings.PerkDescription.Student = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Student, "Talented");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Student].Tooltip = gt.Const.Strings.PerkDescription.Student;
	gt.Const.Strings.PerkDescription.Gifted = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Gifted, "Talented");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Gifted].Tooltip = gt.Const.Strings.PerkDescription.Gifted;

	gt.Const.Strings.PerkDescription.FastAdaption = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.FastAdaption, "Calm");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.FastAdaption].Tooltip = gt.Const.Strings.PerkDescription.FastAdaption;
	gt.Const.Strings.PerkDescription.FortifiedMind = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.FortifiedMind, "Calm");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.FortifiedMind].Tooltip = gt.Const.Strings.PerkDescription.FortifiedMind;
	gt.Const.Strings.PerkDescription.LegendMindOverBody = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendMindOverBody, "Calm");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendMindOverBody].Tooltip = gt.Const.Strings.PerkDescription.LegendMindOverBody;

	gt.Const.Strings.PerkDescription.LegendAlert = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendAlert, "Fast");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendAlert].Tooltip = gt.Const.Strings.PerkDescription.LegendAlert;
	gt.Const.Strings.PerkDescription.Relentless = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Relentless, "Fast and Light Armor");
	gt.Const.Strings.PerkDescription.Relentless += "[color=#0b0084]s[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Relentless].Tooltip = gt.Const.Strings.PerkDescription.Relentless;
	gt.Const.Strings.PerkDescription.LegendSecondWind = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSecondWind, "Resilient");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSecondWind].Tooltip = gt.Const.Strings.PerkDescription.LegendSecondWind;
	gt.Const.Strings.PerkDescription.BattleFlow = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.BattleFlow, "Fast");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.BattleFlow].Tooltip = gt.Const.Strings.PerkDescription.BattleFlow;

	gt.Const.Strings.PerkDescription.LegendComposure = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendComposure, "Large");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendComposure].Tooltip = gt.Const.Strings.PerkDescription.LegendComposure;
	gt.Const.Strings.PerkDescription.Steadfast = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Steadfast, "Large");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Steadfast].Tooltip = gt.Const.Strings.PerkDescription.Steadfast;
	gt.Const.Strings.PerkDescription.Stalwart = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Stalwart, "Large");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Stalwart].Tooltip = gt.Const.Strings.PerkDescription.Stalwart;

	gt.Const.Strings.PerkDescription.Recover = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Recover, "Sturdy");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Recover].Tooltip = gt.Const.Strings.PerkDescription.Recover;
	gt.Const.Strings.PerkDescription.SteelBrow = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.SteelBrow, "Sturdy");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.SteelBrow].Tooltip = gt.Const.Strings.PerkDescription.SteelBrow;
	gt.Const.Strings.PerkDescription.Taunt = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Taunt, "Sturdy");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Taunt].Tooltip = gt.Const.Strings.PerkDescription.Taunt;
	gt.Const.Strings.PerkDescription.ReturnFavor = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.ReturnFavor, "Sturdy");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.ReturnFavor].Tooltip = gt.Const.Strings.PerkDescription.ReturnFavor;
	gt.Const.Strings.PerkDescription.Vengeance = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Vengeance, "Sturdy");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Vengeance].Tooltip = gt.Const.Strings.PerkDescription.Vengeance;

	gt.Const.Strings.PerkDescription.Adrenalin = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Adrenalin, "Unstoppable");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Adrenalin].Tooltip = gt.Const.Strings.PerkDescription.Adrenalin;
	gt.Const.Strings.PerkDescription.Berserk = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Berserk, "Unstoppable");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Berserk].Tooltip = gt.Const.Strings.PerkDescription.Berserk;
	gt.Const.Strings.PerkDescription.KillingFrenzy = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.KillingFrenzy, "Unstoppable");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.KillingFrenzy].Tooltip = gt.Const.Strings.PerkDescription.KillingFrenzy;

	gt.Const.Strings.PerkDescription.LegendCheerOn = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendCheerOn, "Sergeant");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendCheerOn].Tooltip = gt.Const.Strings.PerkDescription.LegendCheerOn;
	gt.Const.Strings.PerkDescription.RallyTheTroops = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.RallyTheTroops, "Sergeant");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.RallyTheTroops].Tooltip = gt.Const.Strings.PerkDescription.RallyTheTroops;
	gt.Const.Strings.PerkDescription.InspiringPresence = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.InspiringPresence, "Sergeant");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.InspiringPresence].Tooltip = gt.Const.Strings.PerkDescription.InspiringPresence;
	gt.Const.Strings.PerkDescription.Inspire = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Inspire, "Sergeant");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Inspire].Tooltip = gt.Const.Strings.PerkDescription.Inspire;

	gt.Const.Strings.PerkDescription.LegendSpecBandage += "\n[color=#0b0084]From the Healer perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecBandage].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecBandage;

	gt.Const.Strings.PerkDescription.LegendNetRepair += "\n[color=#0b0084]From the Trapper perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendNetRepair].Tooltip = gt.Const.Strings.PerkDescription.LegendNetRepair;
	gt.Const.Strings.PerkDescription.LegendNetCasting += "\n[color=#0b0084]From the Trapper perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendNetCasting].Tooltip = gt.Const.Strings.PerkDescription.LegendNetCasting;
	gt.Const.Strings.PerkDescription.LegendMasteryNets = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendMasteryNets, "Trapper");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendMasteryNets].Tooltip = gt.Const.Strings.PerkDescription.LegendMasteryNets;
	gt.Const.Strings.PerkDescription.LegendEscapeArtist = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendEscapeArtist, "Trapper");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendEscapeArtist].Tooltip = gt.Const.Strings.PerkDescription.LegendEscapeArtist;

	gt.Const.Strings.PerkDescription.LegendFieldRepairs = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendFieldRepairs, "Mender");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendFieldRepairs].Tooltip = gt.Const.Strings.PerkDescription.LegendFieldRepairs;
	gt.Const.Strings.PerkDescription.LegendToolsDrawers = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendToolsDrawers, "Mender");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendToolsDrawers].Tooltip = gt.Const.Strings.PerkDescription.LegendToolsDrawers;
	gt.Const.Strings.PerkDescription.LegendToolsSpares = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendToolsSpares, "Mender");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendToolsSpares].Tooltip = gt.Const.Strings.PerkDescription.LegendToolsSpares;

	gt.Const.Strings.PerkDescription.LegendPaymaster = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendPaymaster, "Clerk");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendPaymaster].Tooltip = gt.Const.Strings.PerkDescription.LegendPaymaster;
	gt.Const.Strings.PerkDescription.LegendDangerPay += "\n[color=#0b0084]From the Clerk perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendDangerPay].Tooltip = gt.Const.Strings.PerkDescription.LegendDangerPay;
	gt.Const.Strings.PerkDescription.LegendBribe = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendBribe, "Clerk");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendBribe].Tooltip = gt.Const.Strings.PerkDescription.LegendBribe;

	gt.Const.Strings.PerkDescription.LegendDogWhisperer = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendDogWhisperer, "Houndmaster");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendDogWhisperer].Tooltip = gt.Const.Strings.PerkDescription.LegendDogWhisperer;
	gt.Const.Strings.PerkDescription.LegendDogBreeder = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendDogBreeder, "Houndmaster");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendDogBreeder].Tooltip = gt.Const.Strings.PerkDescription.LegendDogBreeder;
	gt.Const.Strings.PerkDescription.LegendDogHandling = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendDogHandling, "Houndmaster");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendDogHandling].Tooltip = gt.Const.Strings.PerkDescription.LegendDogHandling;
	gt.Const.Strings.PerkDescription.LegendPackleader = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendPackleader, "Houndmaster");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendPackleader].Tooltip = gt.Const.Strings.PerkDescription.LegendPackleader;

	gt.Const.Strings.PerkDescription.LegendMarkTarget += "\n[color=#0b0084]From the Tactician perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendMarkTarget].Tooltip = gt.Const.Strings.PerkDescription.LegendMarkTarget;
	gt.Const.Strings.PerkDescription.LegendShieldsUp += "\n[color=#0b0084]From the Tactician perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendShieldsUp].Tooltip = gt.Const.Strings.PerkDescription.LegendShieldsUp;
	gt.Const.Strings.PerkDescription.LegendHoldTheLine += "\n[color=#0b0084]From the Tactician perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendHoldTheLine].Tooltip = gt.Const.Strings.PerkDescription.LegendHoldTheLine;
	gt.Const.Strings.PerkDescription.LegendForwardPush += "\n[color=#0b0084]From the Tactician perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendForwardPush].Tooltip = gt.Const.Strings.PerkDescription.LegendForwardPush;

	gt.Const.Strings.PerkDescription.LegendSpecialistKnifeSkill = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSpecialistKnifeSkill, "Assassin");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistKnifeSkill].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistKnifeSkill;
	gt.Const.Strings.PerkDescription.LegendSpecialistKnifeDamage = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSpecialistKnifeDamage, "Assassin");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistKnifeDamage].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistKnifeDamage;

	gt.Const.Strings.PerkDescription.LegendHidden = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendHidden, "Devious and Assassin");
	gt.Const.Strings.PerkDescription.LegendHidden += "[color=#0b0084]s[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendHidden].Tooltip = gt.Const.Strings.PerkDescription.LegendHidden;

	gt.Const.Strings.PerkDescription.LegendAssassinate = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendAssassinate, "Assassin");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendAssassinate].Tooltip = gt.Const.Strings.PerkDescription.LegendAssassinate;

	gt.Const.Strings.PerkDescription.LegendPrepareBleed += "\n[color=#0b0084]From the Butcher perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendPrepareBleed].Tooltip = gt.Const.Strings.PerkDescription.LegendPrepareBleed;
	gt.Const.Strings.PerkDescription.LegendPrepareGraze += "\n[color=#0b0084]From the Butcher and Cultist perk groups[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendPrepareGraze].Tooltip = gt.Const.Strings.PerkDescription.LegendPrepareGraze;
	gt.Const.Strings.PerkDescription.LegendSlaughter += "\n[color=#0b0084]From the Butcher perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSlaughter].Tooltip = gt.Const.Strings.PerkDescription.LegendSlaughter;

	gt.Const.Strings.PerkDescription.LegendSpecialistShortbowSkill = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSpecialistShortbowSkill, "Hunter");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistShortbowSkill].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistShortbowSkill;
	gt.Const.Strings.PerkDescription.LegendSpecialistShortbowDamage = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSpecialistShortbowDamage, "Hunter");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistShortbowDamage].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistShortbowDamage;

	gt.Const.Strings.PerkDescription.LegendSpecialistShovelSkill = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSpecialistShovelSkill, "Digger");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistShovelSkill].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistShovelSkill;
	gt.Const.Strings.PerkDescription.LegendSpecialistShovelDamage = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSpecialistShovelDamage, "Digger");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistShovelDamage].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistShovelDamage;
	gt.Const.Strings.PerkDescription.LegendResurrectionist += "\n[color=#0b0084]From the Digger perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendResurrectionist].Tooltip = gt.Const.Strings.PerkDescription.LegendResurrectionist;

	gt.Const.Strings.PerkDescription.LegendWoodworking = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendWoodworking, "Lumberjack");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendWoodworking].Tooltip = gt.Const.Strings.PerkDescription.LegendWoodworking;

	gt.Const.Strings.PerkDescription.LegendSpecialistSickleSkill = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSpecialistSickleSkill, "Apothecary");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistSickleSkill].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistSickleSkill;
	gt.Const.Strings.PerkDescription.LegendSpecialistSickleDamage = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendSpecialistSickleDamage, "Apothecary");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistSickleDamage].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistSickleDamage;

	gt.Const.Strings.PerkDescription.LegendSpecialistLuteSkill += "\n[color=#0b0084]From the Minstrel perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistLuteSkill].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistLuteSkill;
	gt.Const.Strings.PerkDescription.LegendSpecialistLuteDamage += "\n[color=#0b0084]From the Minstrel perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecialistLuteDamage].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecialistLuteDamage;
	gt.Const.Strings.PerkDescription.LegendDaze = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendDaze, "Minstrel");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendDaze].Tooltip = gt.Const.Strings.PerkDescription.LegendDaze;
	gt.Const.Strings.PerkDescription.LegendEntice = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendEntice, "Minstrel");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendEntice].Tooltip = gt.Const.Strings.PerkDescription.LegendEntice;
	gt.Const.Strings.PerkDescription.LegendPush += "\n[color=#0b0084]From the Minstrel perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendPush].Tooltip = gt.Const.Strings.PerkDescription.LegendPush;
	gt.Const.Strings.PerkDescription.LegendDrumsOfWar = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendDrumsOfWar, "Minstrel");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendDrumsOfWar].Tooltip = gt.Const.Strings.PerkDescription.LegendDrumsOfWar;
	gt.Const.Strings.PerkDescription.LegendDrumsOfLife = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendDrumsOfLife, "Minstrel");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendDrumsOfLife].Tooltip = gt.Const.Strings.PerkDescription.LegendDrumsOfLife;

	gt.Const.Strings.PerkDescription.LegendTrueBeliever = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendTrueBeliever, "Calm and Holy Man");
	gt.Const.Strings.PerkDescription.LegendTrueBeliever += "[color=#0b0084]s[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendTrueBeliever].Tooltip = gt.Const.Strings.PerkDescription.LegendTrueBeliever;
	gt.Const.Strings.PerkDescription.LegendPrayerOfFaith = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendPrayerOfFaith, "Holy Man");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendPrayerOfFaith].Tooltip = gt.Const.Strings.PerkDescription.LegendPrayerOfFaith;
	gt.Const.Strings.PerkDescription.LegendPrayerOfLife = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendPrayerOfLife, "Holy Man");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendPrayerOfLife].Tooltip = gt.Const.Strings.PerkDescription.LegendPrayerOfLife;
	gt.Const.Strings.PerkDescription.LegendHolyFlame = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendHolyFlame, "Holy Man");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendHolyFlame].Tooltip = gt.Const.Strings.PerkDescription.LegendHolyFlame;

	gt.Const.Strings.PerkDescription.LegendSpecCultHood += "\n[color=#0b0084]From the Cultist perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecCultHood].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecCultHood;
	gt.Const.Strings.PerkDescription.LegendSpecCultArmor += "\n[color=#0b0084]From the Cultist perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecCultArmor].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecCultArmor;
	gt.Const.Strings.PerkDescription.LegendLacerate += "\n[color=#0b0084]From the Cultist perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendLacerate].Tooltip = gt.Const.Strings.PerkDescription.LegendLacerate;

	gt.Const.Strings.PerkDescription.LegendBarterConvincing = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendBarterConvincing, "Trader");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendBarterConvincing].Tooltip = gt.Const.Strings.PerkDescription.LegendBarterConvincing;
	gt.Const.Strings.PerkDescription.LegendBarterTrustworthy = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendBarterTrustworthy, "Trader");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendBarterTrustworthy].Tooltip = gt.Const.Strings.PerkDescription.LegendBarterTrustworthy;
	gt.Const.Strings.PerkDescription.LegendBarterGreed = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.LegendBarterGreed, "Trader");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendBarterGreed].Tooltip = gt.Const.Strings.PerkDescription.LegendBarterGreed;
}
