local gt = this.getroottable();

if (!("PTR" in gt.Const))
{
	gt.Const.PTR <- {};
}

gt.Const.PTR.Version <- 1;

local modID = "mod_legends_PTR";
::mods_registerMod(modID, gt.Const.PTR.Version, "Perk Trees Rework 1.2.20");

::mods_queue(modID, "mod_legends, mod_MSU, mod_betterFencing, mod_WMS, mod_mediumArmorRework, mod_legends_STR, mod_duelistDefense", function()
{
	// this.Const.AI.VerboseMode = true;
	gt.setupDebugLog <- function (_enabled = false, _name = "default")
	{
		//keep table of mod names so that you can turn it on and off for specific mods
		if (!("debugLog" in gt)){
			gt.debugLog <- {}
		}
		if (!(_name in gt.debugLog))
		{
			gt.debugLog[_name] <- false
		}
		gt.debugLog[_name] <- _enabled
		if (gt.debugLog[_name]) this.logInfo("debug log set to true for " + _name)

		gt.printDebug <- function(arg = "No argument for debug log", _name = "default")
		{
			if (_name in this.debugLog && this.debugLog[_name]){
				local src = getstackinfos(2).src.slice(0, -4)
				src = split(src, "/")[split(src, "/").len()-1]
				this.logInfo(_name +  " " + src + " : " + arg)
			}
		}
		gt.isDebug <- function(_str)
		{
			return (_str in this.debugLog && this.debugLog[_str])
		}
	}
	gt.setupDebugLog(true, modID);

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

	::mods_registerJS("ptr_mod_screens.js");
});
