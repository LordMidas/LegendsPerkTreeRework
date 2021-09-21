local gt = this.getroottable();

gt.Const.PTR.modStrings <- function()
{
	gt.Const.Strings.PerkDescription.LegendSmashingShields = "\'If you can\'t get around it, try smashing through. It works!\'.\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Abilities targeting shields do [color=" + this.Const.UI.Color.PositiveValue + "]15%[/color] more damage.\n• If a shield is destroyed using the \'Split Shield\' skill, [color=" + this.Const.UI.Color.PositiveValue + "]4[/color] Action Points are immediately regained.\n\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSmashingShields].Tooltip = gt.Const.Strings.PerkDescription.LegendSmashingShields;
	gt.Const.Strings.PerkName.PTRDismemberment <- "Dismemberment";
	gt.Const.Strings.PerkDescription.PTRDismemberment <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Cutting Damage[/color]\nChop chop!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The threshold to inflict injuries is reduced by a percentage equal to [color= " + this.Const.UI.Color.NegativeValue + "]35%[/color] of your Maximum Damage.\n• Cutting attacks can now inflict injuries on Undead.\n\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeft <- "Heft";
	gt.Const.Strings.PerkDescription.PTRHeft <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Axe[/color]\nTake advantage of the weight of your axe to inflict maximum damage!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Maximum Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]30%[/color] of the Maximum Damage of the currently equipped axe.\n\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRBetweenTheEyes <- "Between the Eyes";
	gt.Const.Strings.PerkDescription.PTRBetweenTheEyes <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Melee Attack[/color]\nLike splitting butter!\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 1 AP and builds 15 Fatigue.\n• Allows you to gain [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] of your Melee Skill as additional chance to hit the head for your next attack. If the attack misses, the effect is wasted.\n\n[color=#0b0084]From the Axe perk group[/color]";
	gt.Const.Strings.PerkName.PTRCull <- "Cull";
	gt.Const.Strings.PerkDescription.PTRCull <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Axe[/color]\nNo weapon has more potential for destruction than an axe, a trait you\'ve learned to take advantage of well!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using Axes, hits to the head will instantly kill a target whose remaining Hitpoints after the attack are below [color=" + this.Const.UI.Color.NegativeValue + "]40%[/color] health when using Two-Handed Axes and below [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] health when using One-Handed Axes.\n• Ignores Nine Lives on the target.\n\n[color=#0b0084]From the Axe perk group[/color]";

	gt.Const.Strings.PerkName.PTRTargetPractice <- "Target Practice";
	gt.Const.Strings.PerkDescription.PTRTargetPractice <- "Time in training has allowed you to come up with an efficient way to organize your projectiles, as well as a less exhausting way to make accurate shots!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Swapping quivers of arrows or bolts never costs any Action Points.\n• The Action Point cost of Aimed Shot is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color].\n\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRRangedSupremacy <- "Ranged Supremacy";
	gt.Const.Strings.PerkDescription.PTRRangedSupremacy <- "Thanks to your experience in ranged combat, you know exactly how to exploit the weaknesses of your peers!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Ranged attacks have [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit against enemies wielding ranged weapons.\n• Increases Vision and shooting range with Bows by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color].\n\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRArrowToTheKnee <- "Arrow to the Knee";
	gt.Const.Strings.PerkDescription.PTRArrowToTheKnee <- "The bane of adventurers everywhere, an arrow to the knee is a surefire way to debilitate a target!\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 2 AP and builds 15 Fatigue.\n• Causes all of your ranged attacks during a turn to apply a debuff on the target for [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] turns, reducing their Melee and Ranged Defense by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] each and requiring them to spend [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] additional Action Points per tile moved.\n• The effects are halved on the second turn.\n\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRFlamingArrows <- "Flaming Arrows";
	gt.Const.Strings.PerkDescription.PTRFlamingArrows <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Bow[/color]\nBurn them all!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• A successful Aimed Shot will now light the target tile on fire for 2 rounds.\n• And trigger a morale check with a penalty to Resolve equal to [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] of your Ranged Skill.\n\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRMarksmanship <- "Marksmanship";
	gt.Const.Strings.PerkDescription.PTRMarksmanship <- "Intuitively calculate wind velocity and distance to target your enemies\' weak spots!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using a Ranged weapon, gain [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Ranged Skill as additional Minimum and Maximum Damage.\n\n[color=#0b0084]From the Bow perk group[/color]";
	gt.Const.Strings.PerkName.PTRHipShooter <- "Hip Shooter";
	gt.Const.Strings.PerkDescription.PTRHipShooter <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Bow[/color]\nMake them fight in the shade!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The Action Point cost of Quick Shot is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color].\n• Each subsequent Quick Shot in a turn builds [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] more Fatigue.\n\n[color=#0b0084]From the Bow perk group[/color]";

	gt.Const.Strings.PerkName.PTRSwordlike <- "Swordlike";
	gt.Const.Strings.PerkDescription.PTRSwordlike <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Cleaver[/color]\nCleaver... sword... pretty much the same thing, right?\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The \'Cleave\' skill gains [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRDeepCuts <- "Deep Cuts";
	gt.Const.Strings.PerkDescription.PTRDeepCuts <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Cutting Damage[/color]\nYou know the best whetstone techniques to get your cutting edge wickedly sharp!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Every second attack against the same target will inflict an additional stack of Bleeding for [color=" + this.Const.UI.Color.PositiveValue + "]5[/color] damage. If any of the two attacks inflicted an injury, this damage is increased to [color=" + this.Const.UI.Color.PositiveValue + "]10[/color].\n\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRSanguinary <- "Sanguinary";
	gt.Const.Strings.PerkDescription.PTRSanguinary <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Melee Attack[/color]\nWhy go for the body when the head is such a juicy target?\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The chance to inflict fatalities is increased by [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color]\n• Fatalities refund [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] of the Base Fatigue Cost of the skill used.\n• During your turn, every successful attack that applies Bleeding, or is against an already bleeding target, improves your Morale by one level, and fatalities instantly set the Morale to Confident.\n\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRBloodlust <- "Bloodlust";
	gt.Const.Strings.PerkDescription.PTRBloodlust <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Melee Attack[/color]\nWhen surrounded by carnage, you feel revitalized and right at home!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• During your turn, every successful attack reduces current Fatigue by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] per stack of Bleeding on the target and increases Fatigue Recovery by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] for one turn per stack of Bleeding on the target.\n• Bleeding inflicted by the attack, or killing a target, also counts towards the bonus.\n\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRBloodbath <- "Bloodbath";
	gt.Const.Strings.PerkDescription.PTRBloodbath <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Melee Attack[/color]\nThere\'s something about removing someone\'s head that just makes you want to do it again!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Fatalities instantly restore [color=" + this.Const.UI.Color.PositiveValue + "]3[/color] Action Points.\n• Has no limit on how many times it can proc per turn.\n\n[color=#0b0084]From the Cleaver perk group[/color]";
	gt.Const.Strings.PerkName.PTRMauler <- "Mauler";
	gt.Const.Strings.PerkDescription.PTRMauler <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Cleaver[/color]\nFlesh is a canvas on which you paint!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Attacks do more damage, the less armor your target has. This bonus is [color=" + this.Const.UI.Color.PositiveValue + "]35%[/color] more damage at no armor, and [color=" + this.Const.UI.Color.PositiveValue + "]0%[/color] more damage at 100% armor remaining.\n\n[color=#0b0084]From the Cleaver perk group[/color]";

	gt.Const.Strings.PerkName.PTRThroughTheRanks <- "Through the Ranks";
	gt.Const.Strings.PerkDescription.PTRThroughTheRanks <- "Ranged attacks have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] reduced chance to inflict friendly fire.";
	gt.Const.Strings.PerkName.PTRTakeAim <- "Take Aim";
	gt.Const.Strings.PerkDescription.PTRTakeAim <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Crossbow or Firearm[/color]\nYou\'ve learned the value of taking time with your shots when the situation calls for it!\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 2 AP and builds 20 Fatigue.\n• Applies to your next attack during the same turn.\n• For crossbows, the attack ignores the hitchance penalty from obstacles and the shot cannot go astray.\n• For Handgonnes the attack has its Maximum Range increased by [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] and if used at a shorter range, the area of effect is increased by [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] instead.\n\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTREntrenched <- "Entrenched";
	gt.Const.Strings.PerkDescription.PTREntrenched <- "You\'ve learned to fight in formation, trusting in the comrades to your front and sides to keep you safe while you go to work!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using a ranged weapon and standing adjacent to an ally wielding a melee weapon who is not engaged in melee, gain [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Ranged Skill, Ranged Defense, and Resolve. The bonus increases by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] every turn up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] as long as you continue to start your turn adjacent to any ally wielding a melee weapon who is not engaged in melee.\n\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRPowerShot <- "Power Shot";
	gt.Const.Strings.PerkDescription.PTRPowerShot <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Crossbow or Firearm[/color]\nLearn where to aim to hinder your enemies the most!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Attacks from crossbows and firearms have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to inflict Staggered for one turn.\n\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRIronSights <- "Iron Sights";
	gt.Const.Strings.PerkDescription.PTRIronSights <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Crossbow or Firearm[/color]\nWith a little tinkering, you\'ve managed to rig up sighting methods for your ranged weapons that allow more focused shots!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Ranged attacks with crossbows and firearms have an additional [color=" + this.Const.UI.Color.PositiveValue + "]+25%[/color] chance to hit the head.\n\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRPrimalFear <- "Primal Fear";
	gt.Const.Strings.PerkDescription.PTRPrimalFear <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Ranged Attack[/color]\nNothing ruins your day quite like a bolt to the head!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Ranged attacks that hit the head have a [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] chance to lower the target\'s morale by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] level.\n• This chance is [color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] when using crossbows.\n\n[color=#0b0084]From the Crossbow perk group[/color]";
	gt.Const.Strings.PerkName.PTRMuscleMemory <- "Muscle Memory";
	gt.Const.Strings.PerkDescription.PTRMuscleMemory <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Crossbow or Firearm[/color]\nWindlass... crank... bolt... aim.. fire... repeat!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The Action Point Cost of reloading a crossbow is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color].\n• And that of reloading a Handgonne is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]2[/color].\n\n[color=#0b0084]From the Crossbow perk group[/color]";

	gt.Const.Strings.PerkName.PTRBetweenTheRibs <- "Between the Ribs";
	gt.Const.Strings.PerkDescription.PTRBetweenTheRibs <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Dagger[/color]\nStriking when an enemy is distracted allows this character to aim for the vulnerable bits!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using daggers, attacks deal [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] more damage per ally surrounding the target.\n• Only works with daggers equipped in the Mainhand.\n\n[color=#0b0084]From the Dagger perk group[/color]";
	gt.Const.Strings.PerkName.PTRLightWeapon <- "Light Weapon";
	gt.Const.Strings.PerkDescription.PTRLightWeapon <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Dagger[/color]\nTake advantage of your dagger\'s light weight to maneuver around the battlefield faster than your enemies!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using a dagger, build up [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] less Fatigue and you gain [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] Action Points.\n• Only works with daggers equipped in the Mainhand.\n\n[color=#0b0084]From the Dagger perk group[/color]";
	gt.Const.Strings.PerkName.PTRSwiftStabs <- "Swift Stabs";
	gt.Const.Strings.PerkDescription.PTRSwiftStabs <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Dagger[/color]\nCreate an opening, then finish them!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• A successful Puncture or Deathblow reduces the Action Point cost of the skill to [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] for the remainder of this turn.\n• Only works with daggers equipped in the Mainhand.\n\n[color=#0b0084]From the Dagger perk group[/color]";

	gt.Const.Strings.PerkName.PTRSmallTarget <- "Small Target";
	gt.Const.Strings.PerkDescription.PTRSmallTarget <- "Training against melons of all types has given you a penchant for hitting heads!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• All attacks, melee or ranged, gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit the head.\n\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeadSmasher <- "Head Smasher";
	gt.Const.Strings.PerkDescription.PTRHeadSmasher <- "Sometimes hits to the head just don\'t do enough damage. You\'ve taken that to mean you just need to hit harder!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The efficacy of the target's Steel Brow perk is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color].\n• Damage inflicted from hits to the head is increased by [color=" + this.Const.UI.Color.PositiveValue + "]15%[/color].\n\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRFromAllSides <- "From all Sides";
	gt.Const.Strings.PerkDescription.PTRFromAllSides <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Flail[/color]\nYou\'ve learned to use the unpredictable swings of your flail to keep your enemies guessing!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Successful hits from Flails progressively reduce the target's Melee and Ranged Defense by a stacking [color=" + this.Const.UI.Color.NegativeValue + "]-3[/color] for one turn.\n• The effect is doubled if the attacks hit the head.\n• Missed attacks reduce the target\'s defense by [color=" + this.Const.UI.Color.NegativeValue + "]-1[/color] instead.\n\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRDeadlyPrecision <- "Deadly Precision";
	gt.Const.Strings.PerkDescription.PTRDeadlyPrecision <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Flail[/color]\nUse the arc of your flailhead to target weak spots in your opponents' armor!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using flails, an additional random [color=" + this.Const.UI.Color.PositiveValue + "]0-25%[/color] of damage ignores armor.\n\n[color=#0b0084]From the Flail perk group[/color]";
	gt.Const.Strings.PerkName.PTRFlailSpinner <- "Flail Spinner";
	gt.Const.Strings.PerkDescription.PTRFlailSpinner <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Flail[/color]\nUse the momentum of your flail to enable quick follow-up blows!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Attacks with flails have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to do a free extra attack.\n• This free attack does [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] reduced damage.\n\n[color=#0b0084]From the Flail perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendSmackdown = "Use your size and strength to bully your way into the prime position.\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 2 AP and builds 15 Fatigue.\n• Prepare to knock back and Baffle an opponent on your next attack.\n• Also causes the target to spend [color=" + this.Const.UI.Color.NegativeValue + "]3[/color] additional Action Points per tile moved on their turn.\n\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSmackdown].Tooltip = gt.Const.Strings.PerkDescription.LegendSmackdown;
	gt.Const.Strings.PerkName.PTRRattle <- "Rattle";
	gt.Const.Strings.PerkDescription.PTRRattle <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Blunt Damage[/color]\nRattle your enemies to their bones to weaken them!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When attacking an opponent wearing armor, if an attack does at least [color=" + this.Const.UI.Color.NegativeValue + "]10[/color] damage to Hitpoints, apply the Rattled effect which reduces the target\'s damage output by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] turn.\n\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDeepImpact <- "Deep Impact";
	gt.Const.Strings.PerkDescription.PTRDeepImpact <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Blunt Damage[/color]\nThrough hits to the funny bone, to stubbed toes, and forehead lumps, you have learned the most effective places to aim to injure your opponents!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The threshold to inflict injury from blunt damage attacks is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] of the currently equipped weapon's armor effectiveness.\n• Blunt attacks can now apply injuries to the Undead.\n\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRSoftMetal <- "Soft Metal";
	gt.Const.Strings.PerkDescription.PTRSoftMetal <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Blunt Damage[/color]\nFighting against armor of all types has taught you to strike for the weak or damaged bits of armor for maximum penetration!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using Hammers an additional [color=" + this.Const.UI.Color.NegativeValue + "]+10%[/color] of the damage ignores armor.\n• When using other blunt weapons, this bonus becomes active when the remaining combined head and body armor durability of the target is less than [color=" + this.Const.UI.Color.NegativeValue + "]60%[/color].\n\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDismantle <- "Dismantle";
	gt.Const.Strings.PerkDescription.PTRDismantle <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Hammer[/color]\nStrip them of their protection while they still wear it!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Every successful hit with a hammer causes the target to receive a stacking [color=" + this.Const.UI.Color.NegativeValue + "]+15%[/color] ([color=" + this.Const.UI.Color.NegativeValue + "]+30%[/color] for Two-Handed hammers) additional damage ignoring armor from all sources for the remainder of the combat.\n\n[color=#0b0084]From the Hammer perk group[/color]";
	gt.Const.Strings.PerkName.PTRDentArmor <- "Dent Armor";
	gt.Const.Strings.PerkDescription.PTRDentArmor <- "[color=" + this.Const.UI.Color.NegativeValue + "]Require: Hammer[/color]\n\'Can\'t fight if they can\'t walk.\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Attacks from hammers have a chance to dent the target's armor, reducing their Action Points by [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] for the remainder of the combat.\n• The chance is [color=" + this.Const.UI.Color.PositiveValue + "]66%[/color] for Two-Handed hammers and [color=" + this.Const.UI.Color.PositiveValue + "]33%[/color] for One-Handed hammers.\n• Only works when attacks hit armor whose maximum durability is greater than 200.\n\n[color=#0b0084]From the Hammer perk group[/color]";

	gt.Const.Strings.PerkName.PTRPushIt <- "Push It";
	gt.Const.Strings.PerkDescription.PTRPushIt <- "Wear your opponents down with your strength and relentlessness!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Fatigue damage inflicted from successful hits is doubled.\n\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeavyStrikes <- "Heavy Strikes";
	gt.Const.Strings.PerkDescription.PTRHeavyStrikes <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Mace[/color]\nYour strikes contain enough force that they disorient your enemies!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Successful hits with maces always apply the Baffled effect.\n\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRBearDown <- "Bear Down";
	gt.Const.Strings.PerkDescription.PTRBearDown <- "\'Give their \'ed a nice knock, then move in for the kill!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Damage against enemies who have suffered a negative status effect such as Baffled, Dazed or Stunned etc. is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color].\n\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRConcussiveStrikes <- "Concussive Strikes";
	gt.Const.Strings.PerkDescription.PTRConcussiveStrikes <- "A strike to the head from this character means goodnight!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Hits to the head with any weapon apply Dazed for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn. This duration is increased to [color=" + this.Const.UI.Color.NegativeValue + "]2[/color] turns for One-Handed Maces.\n• Similar hits with a Two-Handed Mace stun the target for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn, and if the target is immune to stun, apply Dazed instead for [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn.\n\n[color=#0b0084]From the Mace perk group[/color]";
	gt.Const.Strings.PerkName.PTRBoneBreaker <- "Bone Breaker";
	gt.Const.Strings.PerkDescription.PTRBoneBreaker <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Mace[/color]\nSnap, crunch, crumble. Music to your ears!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using a mace, attacks against stunned or rooted targets have a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] ([color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] with Two-Handed maces) chance to inflict a guaranteed injury.\n• If the damage was already sufficient to inflict an injury, it inflicts an additional injury.\n• All maces do [color=" + this.Const.UI.Color.PositiveValue + "]15%[/color] increased damage to Undead.\n\n[color=#0b0084]From the Mace perk group[/color]";

	gt.Const.Strings.PerkName.PTRBolster <- "Bolster";
	gt.Const.Strings.PerkDescription.PTRBolster <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Polearm[/color]\nYour battle brothers feel confident when you\'re there backing them up!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When wielding a Polearm, increase the Resolve of adjacent allies by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of your Melee Skill.\n• If multiple polearm users with this perk are present, only the highest bonus applies.\n\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRLeverage <- "Leverage";
	gt.Const.Strings.PerkDescription.PTRLeverage <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Two-Handed Melee Weapon[/color]\nUse the reach of your weapon to find an angle on the head!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using Two-Handed weapons, attacks at 2 tiles range have [color=" + this.Const.UI.Color.PositiveValue + "]+20%[/color] chance to hit the head.\n• Does not apply to attacks at a range of 1 tile.\n\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRIntimidate <- "Intimidate";
	gt.Const.Strings.PerkDescription.PTRIntimidate <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Polearm[/color]\n\'Trust me, ye don\'t want to be on the other end of a spile on a pole!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Attacks from Polearms, hit or miss, reduce the Resolve of the target by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] of your Melee Skill.\n• Multiple attacks from different sources stack but from the same source do not.\n\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRUtilitarian <- "Utilitarian";
	gt.Const.Strings.PerkDescription.PTRUtilitarian <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Two-Handed, Long Weapon[/color]\nSwing it easier, or bring it down harder!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using a two-handed weapon with a range of 2 tiles, and wearing head and body armor with a total penalty to Maximum Fatigue up to [color=" + this.Const.UI.Color.NegativeValue + "]-15[/color], gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Skill and all skills build up [color=" + this.Const.UI.Color.NegativeValue + "]15%[/color] less Fatigue.\n• For every 2 points of armor Fatigue above [color=" + this.Const.UI.Color.NegativeValue + "]-15[/color], you gain [color=" + this.Const.UI.Color.PositiveValue + "]1%[/color] increased Melee Damage but the other bonuses drop by [color=" + this.Const.UI.Color.NegativeValue + "]-1[/color] and can be negative at high enough armor fatigue.\n\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRFollowUp <- "Follow Up";
	gt.Const.Strings.PerkDescription.PTRFollowUp <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Two-Handed Melee Weapon[/color]\n\'When your buddy\'s hittin\' \'em, you hit \'em too!\'\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 4 AP and builds 30 Fatigue.\n• Can be used when using a Two-Handed weapon and not engaged in melee.\n• Until the start of your next turn, whenever an enemy in your attack range gets hit by an ally\'s melee attack, perform a free attack against that enemy with reduced damage.\n• The damage dealt is [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] for the first attack and is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for every next attack up to a minimum of [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color].\n• These free attacks are non-lethal i.e. they cannot kill the target.\n\n[color=#0b0084]From the Polearm perk group[/color]";
	gt.Const.Strings.PerkName.PTRLongReach <- "Long Reach";
	gt.Const.Strings.PerkDescription.PTRLongReach <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Polearm[/color]\n\n\'If the target is watchin\' the head of yer pike, they\'re sure not watchin\' their back!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When wielding a polearm, enemies within 2 tiles are considered surrounded by you for the purposes of hit-chance bonus for any allies attacking that target.\n\n[color=#0b0084]From the Polearm perk group[/color]";

	gt.Const.Strings.PerkName.PTRPatience <- "Patience";
	gt.Const.Strings.PerkDescription.PTRPatience <- "Take your time and get it right, just like the Captain says!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Ranged Skill as long as you have not moved during your turn.\n\n[color=#0b0084]From the Sling perk group[/color]";
	gt.Const.Strings.PerkName.PTRHeavyProjectiles <- "Heavy Projectiles";
	gt.Const.Strings.PerkDescription.PTRHeavyProjectiles <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Sling[/color]\nProficiency with your sling has enabled you to launch heavier stones full-distance!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Ranged attacks from Slings will stun the target on a hit to the head and apply Dazed on a hit to the body.\n• If the target is immune to stun, hits to the head instead apply Dazed and hits to the body apply Baffled.\n\n[color=#0b0084]From the Sling perk group[/color]";
	gt.Const.Strings.PerkName.PTRDeathFromAfar <- "Death From Afar";
	gt.Const.Strings.PerkDescription.PTRDeathFromAfar <- "They can\'t defend from it if they can\'t see it coming!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Damage from Ranged attacks is increased by [color=" + this.Const.UI.Color.PositiveValue + "]2%[/color] per tile the target is away from you.\n\n[color=#0b0084]From the Sling perk group[/color]";

	gt.Const.Strings.PerkName.PTRPointyEnd <- "Pointy End";
	gt.Const.Strings.PerkDescription.PTRPointyEnd <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Piercing Damage, Melee Attack[/color]\nThe first lesson every fighter gets taught, stick \'em with the pointy end!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Melee piercing attacks against an enemy without a shield gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRThroughTheGaps <- "Through the Gaps";
	gt.Const.Strings.PerkDescription.PTRThroughTheGaps <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Piercing Damage, Melee Attack[/color]\nLearn to call your strikes and target gaps in your opponents\' armor!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Melee piercing attacks ignore an additional [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of the target's armor.\n\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRTwoForOne <- "Two for One";
	gt.Const.Strings.PerkDescription.PTRTwoForOne <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Spear[/color]\nPractice in spear-handling has taught you to strike in the most efficient way possible!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using a spear, the Action Point cost of Thrust, Prong and Glaive Slash is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]1[/color].\n\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRABetterGrip <- "A Better Grip";
	gt.Const.Strings.PerkDescription.PTRABetterGrip <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Spear[/color]\n\'Don\'t hold it like that you buffoon... like THIS!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When using a shield with a One-Handed spear or glaive, gain [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill and [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Defense.\n• When using One-Handed spears with the offhand free, the range of Thrust is increased to 2 tiles.\n• With the offhand free, One-Handed spears and glaives now gain benefit from the Reach Advantage perk.\n• When using Two-Handed spears, Melee Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color].\n\n[color=#0b0084]From the Spear perk group[/color]";
	gt.Const.Strings.PerkName.PTRKingOfAllWeapons <- "King of all Weapons";
	gt.Const.Strings.PerkDescription.PTRKingOfAllWeapons <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Spear[/color]\nOne King to rule them all!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When starting your turn with a Spear equipped, the first Thrust or Prong during your turn costs no Action Points and builds no Fatigue, but does [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] reduced Damage.\n\n[color=#0b0084]From the Spear perk group[/color]";

	gt.Const.Strings.PerkName.PTRVersatileWeapon <- "Versatile Weapon";
	gt.Const.Strings.PerkDescription.PTRVersatileWeapon <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Sword[/color]\nTip... edge... pommel... all parts with which to kill a man!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When wielding a sword, gain [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] damage, [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] armor penetration and [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] armor effectiveness.\n\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRExploitOpening <- "Exploit Opening";
	gt.Const.Strings.PerkDescription.PTRExploitOpening <- "A low shield. A slobby stab. A fake stumble. All are ways that you\'ve learned to tempt your opponent into a fatal false move!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever an opponent misses a Melee attack against you, they are affected by the \'Exploitable Opening\' effect until their next turn, which gives you [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit against them.\n• Makes the \'Riposte\' skill available on the Shamshir and One-Handed versions of Saif and Scimitar.\n\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRFluidWeapon <- "Fluid Weapon";
	gt.Const.Strings.PerkDescription.PTRFluidWeapon <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Sword[/color]\nA well-balanced sword is like an extension of yourself!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Initiative is increased by [color=" + this.Const.UI.Color.PositiveValue + "]35%[/color] of the currently equipped sword\'s armor ignore damage percentage.\n• The Fatigue Cost of weapon skills is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] of the currently equipped sword\'s armor effectiveness.\n\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRTempo <- "Tempo";
	gt.Const.Strings.PerkDescription.PTRTempo <- "By keeping ahead of your opponent, you set the terms of engagement!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Every attack against a target who acts after you in the current round increases your Initiative by [color=" + this.Const.UI.Color.PositiveValue + "]+15[/color].\n• The bonus lasts over into your next turn but only until the first skill used or waiting that turn.\n\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTRKata <- "Kata";
	gt.Const.Strings.PerkDescription.PTRKata <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Sword[/color]\nPracticed footwork allows you to dance around your opponents!\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Variable AP and Fatigue Cost.\n• Immediately after a successful attack, allows you to move one tile ignoring zone of control with reduced Action Point cost. However, the target tile for the movement must be adjacent to an enemy.\n• The Action Point cost is 2 less than the movement cost of your current tile. The Fatigue cost is equal to the movement cost of your current tile.\n• Only works with Two-Handed swords or with One-Handed swords with the offhand free.\n\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Strings.PerkName.PTREnGarde <- "En garde";
	gt.Const.Strings.PerkDescription.PTREnGarde <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Sword[/color]\nYou\'ve become so well-practiced with a blade that attacking and defending are done congruously!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When wielding a sword, if you have not moved from your position during your turn, use Riposte freely at the end of your turn if your weapon has Riposte.\n• If your weapon does not have Riposte, gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Melee Defense instead until the start of your next turn.\n\n[color=#0b0084]From the Sword perk group[/color]";

	gt.Const.Strings.PerkName.PTRBloodyHarvest <- "Bloody Harvest";
	gt.Const.Strings.PerkDescription.PTRBloodyHarvest <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Melee AOE Attack[/color]\nLike wheat before a scythe!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Melee AOE attacks gain [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit and do [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] increased damage.\n\n[color=#0b0084]From the Two-Handed Weapons perk group[/color]";
	gt.Const.Strings.PerkName.PTRFormidableApproach <- "Formidable Approach";
	gt.Const.Strings.PerkDescription.PTRFormidableApproach <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Two-Handed Melee Weapon[/color]\nMake them think twice about getting close!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When wielding a Two-Handed weapon, reduce the Melee Skill and Melee Defense of any enemy who enters your zone of control by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] of your Melee Skill.\n• The debuff lasts until the enemy exits your zone of control or successfully hits you.\n• Only has half the effect against enemies with Two-Handed weapons, and does not work if the enemy also has this perk.\n\n[color=#0b0084]From the Two-Handed Weapons perk group[/color]";
	gt.Const.Strings.PerkName.PTRSweepingStrikes <- "Sweeping Strikes";
	gt.Const.Strings.PerkDescription.PTRSweepingStrikes <- "Force your enemies to neglect offense with the sweeping swings of your weapon!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• AOE attacks lower the Melee Skill of any target hit for one turn. This reduction is [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] for targets with One-Handed weapons and [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for targets with Two-Handed weapons.\n• Only half of this reduction applies if you act after the target in the current round.\n\n[color=#0b0084]From the Two-Handed Weapons perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendOnslaught = "Move with offputting speed, feinting, poking, battering and catching your opponents off guard.\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Grants a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] ([color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] when using a Staff) chance to apply Baffled on every hit, when your Initiative is higher than that of your opponent.\n• Does not work against enemies who are immune to Stun. [color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendOnslaught].Tooltip = gt.Const.Strings.PerkDescription.LegendOnslaught;
	gt.Const.Strings.PerkName.PTREasyTarget <- "Easy Target";
	gt.Const.Strings.PerkDescription.PTREasyTarget <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Staff[/color]\nThe length and dexterity of a staff allows you to comfortably strike at the most debilitating places!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]15%[/color] less Fatigue when using Staves.\n• All attacks with Staves have a [color=" + this.Const.UI.Color.PositiveValue + "]33%[/color] chance ([color=" + this.Const.UI.Color.PositiveValue + "]66%[/color] with Staff Daze) to apply Staggered on a hit.\n• This chance is 100% if the target already has 2 negative status effects (stunned, dazed etc.).\n\n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Strings.PerkDescription.LegendMasteryStaves = "Master the art of fighting with staves.\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.\n• Increases the chance to apply Dazed.\n• Reduces the costs for Missile, Revolt, Entice, Chain Lightning and Firefield.\n• Staff Sweep gains [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit.\n\n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendMasteryStaves].Tooltip = gt.Const.Strings.PerkDescription.LegendMasteryStaves;
	gt.Const.Strings.PerkDescription.LegendSpecStaffStun = "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Staff[/color]\nMaster the movements required to spin your staff in a great flourish that lands with additional force.\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Any strike with a staff that would normally daze, also stuns and staggers.\n• Staff Sweep now applies Dazed.\n• Whack a\' Smack gains [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n\n[color=#0b0084]From the Staff perk group[/color]",
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendSpecStaffStun].Tooltip = gt.Const.Strings.PerkDescription.LegendSpecStaffStun;
	gt.Const.Strings.PerkName.PTRWearThemDown <- "Wear them Down";
	gt.Const.Strings.PerkDescription.PTRWearThemDown <- "\'It ain\'t hard to dodge \'em when they\'re flailing around like fools...!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain a chance that an enemy requires two successful rolls to hit you. This chance is [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] per negative status effect affecting the enemy (e.g. dazed, baffled etc.).\n• Successful attacks with Staves apply a negative status effect which cause the target to build [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] additional Fatigue on skills for 1 turn.\n\n[color=#0b0084]From the Staff perk group[/color]";
	gt.Const.Strings.PerkName.PTRWhackASmack <- "Whack a\' Smack";
	gt.Const.Strings.PerkDescription.PTRWhackASmack <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Staff[/color]\n\n\'... then you smack \'em one when e\'s not lookin\'!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• While wielding a staff, perform a free attack against anyone who misses an attack against you. This free attack has a [color=" + this.Const.UI.Color.NegativeValue + "]-20%[/color] chance to hit.\n• Applies Baffled on the target if successful.\n\n[color=#0b0084]From the Staff perk group[/color]";

	gt.Const.Strings.PerkName.PTRHybridization <- "Hybridization";
	gt.Const.Strings.PerkDescription.PTRHybridization <- "\'Hatchet, throwing axe, spear, javelin... they all kill just the same!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Ranged Skill as Melee Skill.\n• Additionally, when wielding a Throwing Weapon, gain [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Base Melee Skill as Ranged Skill.\n\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkName.PTRMomentum <- "Momentum";
	gt.Const.Strings.PerkDescription.PTRMomentum <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Throwing Weapon[/color]\n\'Ye\'ve gotta get a running start!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Throwing weapons do [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] more damage per tile moved towards the target before throwing.\n\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkName.PTROpportunist <- "Opportunist";
	gt.Const.Strings.PerkDescription.PTROpportunist <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Throwing Weapon[/color]\n\'I\'m not lootin\' Captain! Just grabbing my javelin!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Every time you stand over an enemy's corpse, gain [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] ammo and restore [color=" + this.Const.UI.Color.PositiveValue + "]4[/color] Action Points.\n• Does not work on the same corpse twice.\n\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Strings.PerkDescription.CloseCombatArcher = "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Throwing Weapon[/color]\n\'Don\'t attack until you\'ve seen the whites of their eyes!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• When attacking a target at 2 tiles, gain [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] of your Melee Skill as additional chance to hit.\n• For piercing type throwing weapons, armor penetrating damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] of your Ranged Skill.\n• For cutting type throwing weapons, armor effectiveness is increased by [color=" + this.Const.UI.Color.PositiveValue + "]40%[/color] of your Ranged Skill.\n• For blunt type throwing weapons, has a [color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] chance to apply Staggered, and if the target is already Staggered, to apply Stunned.\n• Only provides half the bonuses when attacking a target at 3 tiles, and no bonus at longer distances.\n\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.CloseCombatArcher].Tooltip = gt.Const.Strings.PerkDescription.CloseCombatArcher;
	gt.Const.Strings.PerkName.PTRNailedIt <- "Nailed It";
	gt.Const.Strings.PerkDescription.PTRNailedIt <- "\'One javelin to the head will take \'em right out!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The chance to hit the head with ranged attacks is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] but reduced by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] per tile of distance between you and the target.\n\n[color=#0b0084]From the Throwing perk group[/color]";

	gt.Const.Strings.PerkName.PTRSurvivalInstinct <- "Survival Instinct";
	gt.Const.Strings.PerkDescription.PTRSurvivalInstinct <- "Your will to live is strong!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever you are attacked, gain a stacking bonus to Melee and Ranged Defense of [color=" + this.Const.UI.Color.PositiveValue + "]+3[/color] on a miss and [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] on a hit. At the start of every turn the bonus is reset except the bonus gained from getting hit which is retained for the remainder of the combat. This retained bonus cannot be higher than [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color].\n\n[color=#0b0084]From the Resilient perk group[/color]";

	gt.Const.Strings.PerkDescription.CoupDeGrace = "\'Off with their heads!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Damage against targets who have sustained any injury effects, like a broken arm is increased by [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color]. Additionally, against targets who are stunned, netted, sleeping or debilitated, damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color]. Both bonuses stack.\n\n[color=#0b0084]From the Vicious perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.CoupDeGrace].Tooltip = gt.Const.Strings.PerkDescription.CoupDeGrace;
	gt.Const.Strings.PerkDescription.LegendAssuredConquest = "\'It is our destiny!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Resolve is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] at all times. Additionally, at positive morale checks it is further increased by [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color].\n• When at Confident Morale, these bonuses are doubled, and additionally Melee Skill, Ranged Skill, Melee Defense, and Ranged Defense are increased by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color].\n\n[color=#0b0084]From the Vicious perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendAssuredConquest].Tooltip = gt.Const.Strings.PerkDescription.LegendAssuredConquest;

	gt.Const.Strings.PerkName.PTRDiscoveredTalent <- "Discovered Talent";
	gt.Const.Strings.PerkDescription.PTRDiscoveredTalent <- "You don\'t know where it came from, but you\'ve suddenly started excelling at everything you do!\n\n[color=" + this.Const.UI.Color.OneTimeEffect + "][u]One-Time Effect:[/u][/color]\n• Gain [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] Star to the talents in all attributes.\n• Then instantly gain a levelup to increase this character's attributes using normal rolls with talents.\n• Cannot increase the talent in an attribute beyond [color=" + this.Const.UI.Color.NegativeValue + "]3[/color] stars.\n• The increased Talent stars only apply to levelups gained from Level 6 onwards.\n\n[color=#0b0084]From the Talented perk group[/color]";
	gt.Const.Strings.PerkName.PTRKnowTheirWeakness <- "Know their Weakness";
	gt.Const.Strings.PerkDescription.PTRKnowTheirWeakness <- "The next one\'s gonna be even easier!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• After killing an enemy, Melee Skill is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] and Ranged Skill by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color], up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]30%[/color] for each.\n• The bonus drops by [color=" + this.Const.UI.Color.NegativeValue + "]5%[/color] if you get hit.\n\n[color=#0b0084]From the Talented perk group[/color]";
	gt.Const.Strings.PerkName.PTRRisingStar <- "Rising Star";
	gt.Const.Strings.PerkDescription.PTRRisingStar <- "Captain said take it slow and steady and I could become a legend someday!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Experience Gain is increased by [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] until Level 13, and by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] after that.\n\n[color=" + this.Const.UI.Color.OneTimeEffect + "][u]One-Time Effect:[/u][/color]\n• At Level 13, gain [color=" + this.Const.UI.Color.PositiveValue + "]2[/color] perk points.\n\n[color=#0b0084]From the Talented perk group[/color]";

	gt.Const.Strings.PerkName.PTRDynamicDuo <- "Dynamic Duo";
	gt.Const.Strings.PerkDescription.PTRDynamicDuo <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Only one ally within 2 tiles who has no other ally within 2 tiles[/color]\nYou\'ve learned that you fight best with a buddy to watch your back!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Initiative, [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] Resolve, and [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] Melee Defense.\n• If your ally also has this perk, these bonuses are doubled, and whenever that ally gets attacked by an enemy in melee, your next melee attack against that enemy has [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit.\n• When the effect is active, gain the Rotation skill even if you do not have the Rotation perk.\n• The Fatigue Cost of the first use of Rotation on your turn is halved, and if your ally also has this perk, it additionally costs no Action Points.\n• Only members of your mercenary company count as allies for this perk.\n\n[color=#0b0084]From the Fast perk group[/color]";
	gt.Const.Strings.PerkName.PTRFreshAndFurious <- "Fresh and Furious";
	gt.Const.Strings.PerkDescription.PTRFreshAndFurious <- "The period of vigor at the beginning of the fight is when you do the most damage!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] when at [color=" + this.Const.UI.Color.PositiveValue + "]0%[/color] Fatigue. This bonus reduces to [color=" + this.Const.UI.Color.NegativeValue + "]0%[/color] when your Fatigue approaches [color=" + this.Const.UI.Color.NegativeValue + "]30%[/color] of Maximum Fatigue.\n\n[color=#0b0084]From the Fast perk group[/color]";

	gt.Const.Strings.PerkName.PTRUnstoppable <- "Unstoppable";
	gt.Const.Strings.PerkDescription.PTRUnstoppable <- "Once you get going, you can\'t be stopped!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain a stacking bonus to Melee Skill and Melee Damage for every successful attack.\n• Each stack provides [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill and increases Melee Damage by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color], up to a maximum of 10 stacks.\n• Attacks at 2 tiles range only grant a stack after two successful hits.\n• You lose half of the stacks if you miss an attack or if you get hit.\n\n[color=#0b0084]From the Unstoppable perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendBackToBasics = "Captain told you to focus on the basics, trying fancy stuff is only going to get you killed!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain a bonus to key combat attributes depending on how far their Base Values are below a certain thershold.\n• These attributes are increased by a percentage equal to the number of points they are below the threshold.\n• The threshold for Melee Skill and Ranged Skill is [color=" + this.Const.UI.Color.PositiveValue + "]70[/color], and for Melee Defense, Ranged Defense, and Resolve is [color=" + this.Const.UI.Color.PositiveValue + "]40[/color].\n• Also grants [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Training in camp.\n\n[color=#0b0084]From the Trained perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendBackToBasics].Tooltip = gt.Const.Strings.PerkDescription.LegendBackToBasics;
	gt.Const.Strings.PerkName.PTRVigilant <- "Vigilant";
	gt.Const.Strings.PerkDescription.PTRVigilant <- "\'On the battlefield, you must always be ready to defend at a moment\'s notice, or strike at a narrow opportunity!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• At the end of your turn, gain Melee Skill and Melee Defense equal to your remaining Action Points up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]9[/color]. The bonus lasts until the end of your next turn.\n\n[color=#0b0084]From the Trained perk group[/color]";
	gt.Const.Strings.PerkName.PTRTheRushOfBattle <- "The Rush of Battle";
	gt.Const.Strings.PerkDescription.PTRTheRushOfBattle <- "\'It\'s not uncommon to make it to the end of the battle not remembering any details, just that you slew many men!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever you are attacked, hit or miss, gain a stacking [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] reduction to the Fatigue Cost of skills during your next turn, up to a maximum of [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color].\n\n[color=#0b0084]From the Trained perk group[/color]";
	gt.Const.Strings.PerkDescription.PerfectFocus = "\'Faster than time itself!\'\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 0 AP and builds 10 Fatigue.\n• [color=" + this.Const.UI.Color.PositiveValue + "]Doubles[/color] your Action Points for your current turn.\n• Each subsequent attack under this effect does a stacking [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] less Damage and builds [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] more Fatigue.\n• On your next turn you will be Exhausted which lowers damage by [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color], increases Fatigue build-up by [color=" + this.Const.UI.Color.NegativeValue + "]100%[/color], and [color=" + this.Const.UI.Color.NegativeValue + "]halves[/color] the Action Points available during that turn.\n• Not usable when Inspired by an ally\'s \'Inspire\' skill.\n\n[color=#0b0084]From the Trained perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.PerfectFocus].Tooltip = gt.Const.Strings.PerkDescription.PerfectFocus;

	gt.Const.Strings.PerkName.PTRPersonalArmor <- "Personal Armor";
	gt.Const.Strings.PerkDescription.PTRPersonalArmor <- "Give your own armor some of that special treatment!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Damage received to armor is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color].\n\n[color=#0b0084]From the Blacksmith perk group[/color]";
	gt.Const.Strings.PerkName.PTRStrengthInNumbers <- "Strength in Numbers";
	gt.Const.Strings.PerkDescription.PTRStrengthInNumbers <- "\'Yeah, skill doesn\'t mean so much when you\'re surrounded by 10 angry townsfolk with sharp pitchforks!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain [color=" + this.Const.UI.Color.PositiveValue + "]+2[/color] Melee Skill, Ranged Skill, Melee  Defense and Ranged Defense for each adjacent ally.\n\n[color=#0b0084]From the Militia perk group[/color]";
	gt.Const.Strings.PerkName.PTRTunnelVision <- "Tunnel Vision";
	gt.Const.Strings.PerkDescription.PTRTunnelVision <- "Years of working in dark mines has given you an advantage fighting at night!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• At night, vision is increased by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] and Melee Skill and Melee Defense are increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color].\n\n[color=#0b0084]From the Miner perk group[/color]";

	gt.Const.Strings.PerkName.PTRPromisedPotential <- "Promised Potential";
	gt.Const.Strings.PerkDescription.PTRPromisedPotential <- "The Captain said he\'d take a gamble on you, but you\'d better not disappoint!\n\n[color=" + this.Const.UI.Color.OneTimeEffect + "][u]One-Time Effect:[/u][/color]\n• This perk remains inert until level 11.\n• Upon reaching level 11, it has a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance of being replaced with \'Realized Potential\' which changes this character\'s background to Sellsword, increases all attributes by [color=" + this.Const.UI.Color.PositiveValue + "]+15[/color], unlocks new perk groups, and refunds all perk points, including the one spent on this perk.\n• If unsuccessful, it is replaced by \'Failed Potential\' which does nothing.\n• The success chance is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]-10%[/color] per perk point already spent before picking this perk. Perks obtained due to starting origin do not count towards reducing this chance.\n\n[color=#0b0084]From the Pauper perk group[/color]";
	gt.Const.Strings.PerkName.PTRRealizedPotential <- "Realized Potential";
	gt.Const.Strings.PerkDescription.PTRRealizedPotential <- "From rags to riches! This character has truly come a long way. Who was once a dreg of society and is now a full-fledged mercenary.\n\nAll perk points have been refunded, and attributes increased.\n\n[color=#0b0084]From the Pauper perk group[/color]";
	gt.Const.Strings.PerkName.PTRFailedPotential <- "Failed Potential";
	gt.Const.Strings.PerkDescription.PTRFailedPotential <- "This character looked promising, but either due to bad luck or simply lack of talent, they have not shown the potential you thought they had. This perk does nothing.\n\n[color=#0b0084]From the Pauper perk group[/color]";
	gt.Const.Strings.PerkName.PTRPunchingBag <- "Punching Bag";
	gt.Const.Strings.PerkDescription.PTRPunchingBag <- "Years of living in the gutter has given you a certain disregard to being beaten down!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Trigger no Morale check on receiving damage.\n• If Realized Potential is a success, this perk becomes permanent and the perk point is refunded.\n\n[color=#0b0084]From the Pauper perk group[/color]";
	gt.Const.Strings.PerkName.PTRTraumaSurvivor <- "Trauma Survivor";
	gt.Const.Strings.PerkDescription.PTRTraumaSurvivor <- "With what you\'ve survived, you might actually be able to make it through this!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Resolve is increased by [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] against fear, panic and mind control effects.\n• If Realized Potential is a success, this perk becomes permanent and the perk point is refunded.\n\n[color=#0b0084]From the Pauper perk group[/color]";

	gt.Const.Strings.PerkName.PTRBulwark <- "Bulwark";
	gt.Const.Strings.PerkDescription.PTRBulwark <- "\'Not much to be afraid of behind a suit of plate!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Resolve is increased by [color=" + this.Const.UI.Color.PositiveValue + "]2%[/color] of the combined current durability of head and body armor.\n• This bonus is [color=" + this.Const.UI.Color.PositiveValue + "]doubled[/color] against negative morale checks except mental attacks.\n\n[color=#0b0084]From the Heavy Armor perk group[/color]";
	gt.Const.Strings.PerkName.PTRManOfSteel <- "Man of Steel";
	gt.Const.Strings.PerkDescription.PTRManOfSteel <- "Armor penetrating damage to Hitpoints received from Ranged attacks is reduced by up to [color=" + this.Const.UI.Color.PositiveValue + "]30%[/color]. This bonus increases exponentially by wearing head and body armor of higher Maximum Durability.\n\n[color=#0b0084]From the Heavy Armor perk group[/color]";

	gt.Const.Strings.PerkName.PTROffhandTraining <- "Offhand Training";
	gt.Const.Strings.PerkDescription.PTROffhandTraining <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Buckler, Parrying Dagger, or Tool[/color]\nFrequent use of tools with your offhand has given you an enviable level of ambidexterity!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Equipping a Buckler or Parrying Dagger in the offhand no longer disables the armor penetration bonus from the Duelist perk.\n• Once per turn, if you have not already switched any weapon or tool, switching a tool in your offhand costs no Action Points. Also works when switching from a Buckler or Parrying Dagger to a tool.\n• Does not stack with Quick Hands.\n\n[color=#0b0084]From the One-Handed Weapons perk group[/color]";
	gt.Const.Strings.PerkDescription.Duelist = "[color=" + this.Const.UI.Color.NegativeValue + "]Required Weapon Type: One-Handed, Melee[/color]\n\n" + gt.Const.Strings.PerkDescription.Duelist;
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Duelist].Tooltip = gt.Const.Strings.PerkDescription.Duelist;
	gt.Const.Strings.PerkName.PTRWeaponMaster <- "Weapon Master";
	gt.Const.Strings.PerkDescription.PTRWeaponMaster <- "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] One-Handed Melee Weapon[/color]\nYou\'ve learned well that weapons are like tools, tailor-made to accomplish specific tasks. Therefore, you carry a small arsenal, ready to handle any situation!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Grants the bonuses of the weapon mastery perks for all One-Handed Melee weapons whose perk groups this character has access to.\n• Once per turn, switching from one One-Handed Melee weapon to another costs no Action Points.\n• Does not stack with Quick Hands.\n\nOnly works if you have picked at least one of the following weapon mastery perks: Axe, Cleaver, Dagger, Flail, Hammer, Mace, Spear, Sword.\n\n[color=#0b0084]From the One-Handed Weapons perk group[/color]";

	gt.Const.Strings.PerkName.PTRFruitsOfLabor <- "Fruits of Labor";
	gt.Const.Strings.PerkDescription.PTRFruitsOfLabor <- "You\'ve quickly realized that your years of hard labor give you an edge in mercenary work!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Hitpoints, Maximum Fatigue, and Initiative are increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] each.\n\n[color=#0b0084]From the Laborer perk group[/color]";
	gt.Const.Strings.PerkName.PTRWearsItWell <- "Wears it Well";
	gt.Const.Strings.PerkDescription.PTRWearsItWell <- "Years of carrying heavy loads has given you a stamina like none other!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Fatigue Recovery is increased by [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of your Maximum Fatigue after gear.\n\n[color=#0b0084]From the Laborer perk group[/color]";

	gt.Const.Strings.PerkName.PTRMenacing <- "Menacing";
	gt.Const.Strings.PerkDescription.PTRMenacing <- "Your appearance gives your enemies a bit of doubt!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Lower the Resolve of adjacent enemies by [color=" + this.Const.UI.Color.PositiveValue + "]-10[/color].\n\n[color=#0b0084]From the Raider perk group[/color]";
	gt.Const.Strings.PerkName.PTRBully <- "Bully";
	gt.Const.Strings.PerkDescription.PTRBully <- "Did you say stop? No, I\'m not gonna stop!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Melee Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] per level of difference between your and your target\'s Morale as long as your Morale is higher than that of your target.\n\n[color=#0b0084]From the Raider perk group[/color]";

	gt.Const.Strings.PerkName.PTRPatternRecognition <- "Pattern Recognition";
	gt.Const.Strings.PerkDescription.PTRPatternRecognition <- "Your experience in battle has led to you being able to quickly adapt to an opponent\'s fighting style!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Every time an opponent attacks you or you attack an opponent, gain stacking Melee Skill and Melee Defense against that opponent for the remainder of the combat.\n• Every subsequent attack gives a larger bonus, with the first attack giving [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color], the second [color=" + this.Const.UI.Color.PositiveValue + "]+2[/color], the third [color=" + this.Const.UI.Color.PositiveValue + "]+3[/color], and so on.\n• Once the bonus reaches [color=" + this.Const.UI.Color.PositiveValue + "]15[/color], all subsequent attacks increase it by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] only.\n• Only works with dealing or receiving melee attacks.\n\n[color=#0b0084]From the Soldier perk group[/color]";
	gt.Const.Strings.PerkName.PTRExudeConfidence <- "Exude Confidence";
	gt.Const.Strings.PerkDescription.PTRExudeConfidence <- "With you by their side, your comrades feel they can conquer mountains!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• At the start of your turn, improve the Morale state of adjacent allies by [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] as long as their Morale state is lower than yours.\n\n[color=#0b0084]From the Soldier perk group[/color]";
	gt.Const.Strings.PerkName.PTRProfessional <- "Professional";
	gt.Const.Strings.PerkDescription.PTRProfessional <- "You\'re a professional, experienced soldier, able to fight with many weapons in many styles!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Grants the benefits of the Shield Expert, Weapon Master, Reach Advantage, and Bloody Harvest perks without requiring these perks to be picked.\n\n[color=#0b0084]From the Soldier perk group[/color]";

	gt.Const.Strings.PerkName.PTRAlwaysAnEntertainer <- "Always An Entertainer";
	gt.Const.Strings.PerkDescription.PTRAlwaysAnEntertainer <- "\'When there\'s coin to be had, you\'d best get to havin\'!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Once per day, when you visit a non-military settlement, gain between [color=" + this.Const.UI.Color.PositiveValue + "]20[/color] and [color=" + this.Const.UI.Color.PositiveValue + "]40[/color] gold.\n• For each level this character is above 1, these values are increased by [color=" + this.Const.UI.Color.PositiveValue + "]+2[/color].\n• The values are doubled for medium-sized settlements and tripled for large settlements.\n• If multiple characters with this perk are present, only one of them will entertain in a given city on a given day, and the others will have to entertain in other cities.\n\n[color=#0b0084]From the Entertainer perk group[/color]";
	gt.Const.Strings.PerkName.PTRPaintASmile <- "Paint a Smile";
	gt.Const.Strings.PerkDescription.PTRPaintASmile <- "You know that positivity begets positivity, so you always make sure to put on a show for your comrades!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• At the start of every new day, improve the Mood of the character with the lowest Mood in your roster.\n\n[color=#0b0084]From the Entertainer perk group[/color]";

	gt.Const.Strings.PerkDescription.LegendFreedomOfMovement = "Being unencumbered allows you to move and strike with great accuracy.\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Melee Skill and Melee Defense are increased by [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of your Maximum Fatigue after gear.\n• These bonuses drop exponentially when wearing head and body armor with a total penalty to Maximum Fatigue greater than [color=" + this.Const.UI.Color.NegativeValue + "]-15[/color].\n\n[color=#0b0084]From the Light Armor perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendFreedomOfMovement].Tooltip = gt.Const.Strings.PerkDescription.LegendFreedomOfMovement;

	gt.Const.Strings.PerkDescription.LegendTumble = "Make use of your acrobatic skill to improve your movements.\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Halves the Fatigue Cost of Lunge, Unarmed Lunge, Footwork and Leap. The Action Point cost of all these skills, except Lunge, is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] and that of Leap is halved.";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendTumble].Tooltip = gt.Const.Strings.PerkDescription.LegendTumble;

	gt.Const.Strings.PerkDescription.LegendClarity = "A well honed mind can perceive more in each instant, making time appear slower in key instants of need.\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Grants [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] Action Point.\n• Gain an additional [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] Action Point if under the effect of potions that improve cognition: Iron Will, Lionheart, Cat, Recovery or Hexen Ichor.\n• Does not work if you have Berserk or are dazed, drunk, hungover, taunted, staggered, horrified, concused or fleeing.\n\n[color=#0b0084]From the Calm perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendClarity].Tooltip = gt.Const.Strings.PerkDescription.LegendClarity;

	gt.Const.Strings.PerkDescription.LastStand = "\'This is the hill that you will NOT die on!\'\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color] additional Melee and Ranged Defense for every [color=" + this.Const.UI.Color.NegativeValue + "]2%[/color] of missing hitpoints below [color=" + this.Const.UI.Color.NegativeValue + "]66%[/color].\n• When below [color=" + this.Const.UI.Color.NegativeValue + "]40%[/color] health this character becomes immune to the effects of subsequent injuries, and is not upset by health losses.\n\n[color=#0b0084]From the Resilient perk group[/color]"
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LastStand].Tooltip = gt.Const.Strings.PerkDescription.LastStand;

	gt.Const.Strings.PerkDescription.Indomitable = "\'Mountains cannot be moved, nor taken down!\'\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 5 AP and builds 25 Fatigue.\n• Grants a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] damage reduction and immunity to being stunned, knocked back, grabbed, swallowed or culled for one turn.\n\n[color=#0b0084]From the Sturdy perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.Indomitable].Tooltip = gt.Const.Strings.PerkDescription.Indomitable;

	gt.Const.Strings.PerkDescription.QuickHands = "Looking for this?\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Swapping any item in battle a free action with no Action Point cost once every turn.\n• Does not work when swapping a shield, or when swapping from one Two-Handed melee weapon to another Two-Handed melee weapon.\n\n[color=#0b0084]From the Throwing perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.QuickHands].Tooltip = gt.Const.Strings.PerkDescription.QuickHands;

	gt.Const.Strings.PerkDescription.LegendRelax = "\'Relax, bro!\'\n\n[color=" + this.Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 9 AP and builds 30 Fatigue.\n• Soothe an ally, doubling their Fatigue Recovery on their next turn.\n• Cannot be used when engaged in melee or on the same target two turns in a row.";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.LegendRelax].Tooltip = gt.Const.Strings.PerkDescription.LegendRelax;

	gt.Const.Strings.PerkDescription.DoubleStrike = "[color=" + this.Const.UI.Color.NegativeValue + "][u]Requires:[/u] Melee Attack[/color]\nHere, take another one!\n\n[color=" + this.Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• " + gt.Const.Strings.PerkDescription.DoubleStrike;
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.DoubleStrike].Tooltip = gt.Const.Strings.PerkDescription.DoubleStrike;

	gt.Const.Strings.PerkDescription.SpecSword += "\n\nThe threshold to inflict injury when using a Shamshir or the One-Handed versions of Saif and Scimitar is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color].\n\n[color=#0b0084]From the Sword perk group[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.SpecSword].Tooltip = gt.Const.Strings.PerkDescription.SpecSword;

	gt.Const.Strings.PerkDescription.ShieldExpert = "Learn to better deflect hits to the side instead of blocking them head on.\n\nThe shield defense bonus is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color]. This also applies to the additional defense bonus of the Shieldwall skill.\n\nShield damage received is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] to a minimum of 1.\n\nThe \'Knock Back\' skill gains [color=" + this.Const.UI.Color.PositiveValue + "]+15%[/color] chance to hit and applies \'Staggered\' on the target.\n\n[color=#0b0084]From the One-Handed Weapons and Shield perk groups[/color]";
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.ShieldExpert].Tooltip = gt.Const.Strings.PerkDescription.ShieldExpert;

	local poleWeaponStrings = [
		"SpecAxe",
		"SpecHammer",
		"SpecMace",
		"SpecPolearm",
		"SpecSpear"
	];

	foreach (s in poleWeaponStrings)
	{
		gt.Const.Strings.PerkDescription[s] = this.MSU.String.replace(gt.Const.Strings.PerkDescription[s], "no longer has a penalty", "has a reduced penalty");
		gt.Const.Strings.PerkDescription[s] = this.MSU.String.replace(gt.Const.Strings.PerkDescription[s], "no longer have a penalty", "have a reduced penalty");
		gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs[s]].Tooltip = gt.Const.Strings.PerkDescription[s];
	}

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
	gt.Const.Strings.PerkDescription.SpecThrowing += "\nThrowing Spear now ignores the damage reduction from the target\'s Shield Expert perk.\n\n[color=#0b0084]From the Throwing perk group[/color]";
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

	gt.Const.Strings.PerkDescription.BFFencer = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.BFFencer, "Light Armor");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.BFFencer].Tooltip = gt.Const.Strings.PerkDescription.BFFencer;

	gt.Const.Strings.PerkDescription.ReachAdvantage = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.ReachAdvantage, "Two-Handed Weapons");
	gt.Const.Perks.PerkDefObjects[gt.Const.Perks.PerkDefs.ReachAdvantage].Tooltip = gt.Const.Strings.PerkDescription.ReachAdvantage;	
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

	gt.Const.Strings.PerkDescription.Lookout = changePerkGroupInTooltip(gt.Const.Strings.PerkDescription.Lookout, "Scout and Sling");
	gt.Const.Strings.PerkDescription.Lookout += "[color=#0b0084]s[/color]";
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
