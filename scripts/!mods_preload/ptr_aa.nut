local gt = this.getroottable();

gt.Const.PTR <- {};

local modID = "mod_legends_PTR";
::mods_registerMod(modID, 1.0, "Perk Trees Rework 0.6.7");

::mods_queue(modID, "mod_legends, mod_MSU, mod_fencerPerk, mod_WMS, mod_mediumArmorRework", function()
{
	gt.Const.PTR.modStrings();
	gt.Const.PTR.modSkill();
	gt.Const.PTR.modSkillContainer();
	gt.Const.PTR.modItemContainer();
	gt.Const.PTR.modActor();
	gt.Const.PTR.modPlayer();
	gt.Const.PTR.modSkills();
	gt.Const.PTR.modWeapons();
	gt.Const.PTR.modItems();

	gt.Const.PTR.modLegendsPerkTreeCreationSystem();

	gt.Const.PTR.addPerksToPerkDefs();

	gt.Const.PTR.modDefenseTrees();
	gt.Const.PTR.modWeaponTrees();
	gt.Const.PTR.modTraitsTrees();
	gt.Const.PTR.modClassTrees();

	gt.Const.PTR.createStylesTrees();
	gt.Const.PTR.createProfessionTrees();

	gt.Const.PTR.modCharacterBackground();
	gt.Const.PTR.modCharacterBackgrounds();

	gt.Const.PTR.modLegendsEnemyTrees();

	gt.Const.PTR.modEnemies();
});
