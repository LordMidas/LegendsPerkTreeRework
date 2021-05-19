local gt = this.getroottable();

gt.Const.PTR.modCharacterBackground <- function()
{
	this.Const.Perks.TraitsTrees.getBaseAttributes = function()
	{
		return {
			Hitpoints = [
				-4,
				-4
			],
			Bravery = [
				-4,
				-4
			],
			Stamina = [
				-4,
				-4
			],
			MeleeSkill = [
				-4,
				-4
			],
			RangedSkill = [
				-4,
				-4
			],
			MeleeDefense = [
				-4,
				-4
			],
			RangedDefense = [
				-4,
				-4
			],
			Initiative = [
				-4,
				-4
			]
		};
	};
	::mods_hookExactClass("skills/backgrounds/character_background", function(o) {
		o.m.PerkTreeDynamicMins = {
			//Profession = 1,
			Weapon = 6,
			Defense = 2,
			Traits = 5,
			Enemy = 1,
			EnemyChance = 0.01,
			Class = 1,
			ClassChance = 0.01,
			Magic = 1,
			MagicChance = 0,
			Styles = 2
		};
		o.m.PerkTreeDynamicMinsMagic = {
			//Profession = 1,
			Weapon = 6,
			Defense = 2,
			Traits = 5,
			Enemy = 1,
			EnemyChance = 0.01,
			Class = 1,
			ClassChance = 0.01,
			Magic = 1,
			MagicChance = 0.001,
			Styles = 2
		};
		o.m.PerkTreeDynamicMinsBeast = {
			//Profession = 1,
			Weapon = 6,
			Defense = 2,
			Traits = 5,
			Enemy = 1,
			EnemyChance = 0.05,
			Class = 1,
			ClassChance = 0.02,
			Magic = 1,
			MagicChance = 0.001,
			Styles = 2
		};
	});
}
