local gt = this.getroottable();

gt.Const.PTR <- {};

local modID = "mod_PTR";
::mods_registerMod(modID, 1.0, "Perk Trees Rework 0.5.0-Beta");

::mods_queue(modID, "mod_legends, MSU, mod_FencerPerk", function()
{
	gt.Const.PTR.hookStrings();
	gt.Const.PTR.hookSkill();
	gt.Const.PTR.hookActor();
	gt.Const.PTR.hookPlayer();
	//gt.Const.PTR.hookPerks();
	gt.Const.PTR.hookSkills();
	gt.Const.PTR.hookWeapons();
	gt.Const.PTR.hookLegendsPerkTreeCreationSystem();

	gt.Const.PTR.addPerksToPerkDefs();
	gt.Const.PTR.hookWeaponTrees();
	gt.Const.PTR.hookTraitsTrees();
	gt.Const.PTR.hookClassTrees();
	gt.Const.PTR.hookLegendsEnemyTrees();
	gt.Const.PTR.createProfessionTrees();
	gt.Const.PTR.createStylesTrees();

	gt.Const.PTR.hookCharacterBackground();
	//gt.Const.PTR.hookCharacterBackgrounds();
});
