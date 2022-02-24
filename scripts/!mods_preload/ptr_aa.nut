local gt = this.getroottable();

if (!("PTR" in gt.Const))
{
	gt.Const.PTR <- {};
}

gt.Const.PTR.Version <- 1;
gt.Const.PTR.ModID <- "mod_legends_PTR";

::mods_registerMod(gt.Const.PTR.ModID, gt.Const.PTR.Version, "Perk Trees Rework 1.6.14");

::mods_queue(gt.Const.PTR.ModID, "mod_legends, mod_MSU, mod_betterFencing, mod_WMS, mod_mediumArmorRework, mod_legends_STR, mod_duelistDefense", function()
{	
	this.MSU.Log.setDebugLog(false, gt.Const.PTR.ModID);

	gt.Const.PTR.modRetinue();
	delete gt.Const.PTR.modRetinue;

	gt.Const.PTR.modCharacterInjuries();
	delete gt.Const.PTR.modCharacterInjuries;

	gt.Const.PTR.modStrings();
	delete gt.Const.PTR.modStrings;

	gt.Const.PTR.modSkill();
	delete gt.Const.PTR.modSkill;

	gt.Const.PTR.modSkillContainer();
	delete gt.Const.PTR.modSkillContainer;

	gt.Const.PTR.modActor();
	delete gt.Const.PTR.modActor;

	gt.Const.PTR.modPlayer();
	delete gt.Const.PTR.modPlayer;

	gt.Const.PTR.modSkills();
	delete gt.Const.PTR.modSkills;

	gt.Const.PTR.modWeapons();
	delete gt.Const.PTR.modWeapons;
	
	gt.Const.PTR.modItems();
	delete gt.Const.PTR.modItems;
	
	gt.Const.PTR.modSettlement();	
	delete gt.Const.PTR.modSettlement;
	
	gt.Const.PTR.addPerksToPerkDefs();
	delete gt.Const.PTR.addPerksToPerkDefs;
	
	gt.Const.PTR.modDefenseTrees();
	delete gt.Const.PTR.modDefenseTrees;
	
	gt.Const.PTR.modWeaponTrees();
	delete gt.Const.PTR.modWeaponTrees;
	
	gt.Const.PTR.modTraitsTrees();
	delete gt.Const.PTR.modTraitsTrees;
	
	gt.Const.PTR.modClassTrees();
	delete gt.Const.PTR.modClassTrees;
	
	gt.Const.PTR.modMagicTrees();
	delete gt.Const.PTR.modMagicTrees;	

	gt.Const.PTR.createStylesTrees();
	delete gt.Const.PTR.createStylesTrees;
	
	gt.Const.PTR.createProfessionTrees();
	delete gt.Const.PTR.createProfessionTrees;

	gt.Const.PTR.createSpecialTrees();
	delete gt.Const.PTR.createSpecialTrees;
	
	gt.Const.PTR.modLegendsPerkTreeCreationSystem();
	delete gt.Const.PTR.modLegendsPerkTreeCreationSystem;
	
	gt.Const.PTR.modCharacterBackground();
	delete gt.Const.PTR.modCharacterBackground;
	
	gt.Const.PTR.modCharacterBackgrounds();
	delete gt.Const.PTR.modCharacterBackgrounds;
	
	gt.Const.PTR.modLegendsEnemyTrees();
	delete gt.Const.PTR.modLegendsEnemyTrees;
	
	gt.Const.PTR.modEnemies();
	delete gt.Const.PTR.modEnemies;
	
	gt.Const.PTR.modAI();
	delete gt.Const.PTR.modAI;
	
	gt.Const.PTR.modRunes();
	delete gt.Const.PTR.modRunes;

	gt.Const.PTR.modTooltipEvents();
	delete gt.Const.PTR.modTooltipEvents;

	gt.Const.PTR.modScenarios();
	delete gt.Const.PTR.modScenarios;

	this.Const.Perks.updatePerkGroupTooltips();

	::mods_registerJS("ptr_mod_screens.js");
});
