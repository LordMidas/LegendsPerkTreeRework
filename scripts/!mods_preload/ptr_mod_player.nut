local gt = this.getroottable();

gt.Const.PTR.modPlayer <- function()
{
	::mods_hookExactClass("entity/tactical/player", function(o) {
		o.m.LevelUpsSpent <- 0;

		o.updateLevel = function()
		{
			while (this.m.Level < this.Const.LevelXP.len() && this.m.XP >= this.Const.LevelXP[this.m.Level])
			{
				++this.m.Level;
				++this.m.LevelUps;

				if (this.m.Level <= this.Const.XP.MaxLevelWithPerkpoints)
				{
					++this.m.PerkPoints;
				}

				if ((this.m.Level == 11 || this.m.Level == 7 && this.World.Assets.getOrigin().getID() == "scenario.manhunters" && this.getBackground().getID() == "background.slave"))
				{
					if (this.m.Skills.hasSkill("perk.student"))
					{
						++this.m.PerkPoints;
					}

					local promisedPotential = this.m.Skills.getSkillByID("perk.ptr_promised_potential");
					if (promisedPotential != null && promisedPotential.m.WillSucceed)
					{
						++this.m.PerkPoints;
					}
				}

				if (this.m.Level == 13 && this.m.Skills.hasSkill("perk.ptr_rising_star"))
				{
					this.m.PerkPoints += 2;
				}

				if (this.m.Level == 11)
				{
					this.updateAchievement("OldAndWise", 1, 1);
				}

				if (this.m.Level > 11 && this.m.VeteranPerks > 0)
				{
					if ((this.m.Level - 1) % this.m.VeteranPerks == 0)
					{
						++this.m.PerkPoints;
					}
				}

				if (this.m.Level == 11 && this.m.Skills.hasSkill("trait.player"))
				{
					this.updateAchievement("TooStubbornToDie", 1, 1);
				}
			}
		}

		local setAttributeLevelUpValues = o.setAttributeLevelUpValues;
		o.setAttributeLevelUpValues = function(_v)
		{
			setAttributeLevelUpValues(_v);
			this.m.LevelUpsSpent++;
		}
	});
}
