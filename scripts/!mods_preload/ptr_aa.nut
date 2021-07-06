local gt = this.getroottable();

gt.Const.PTR <- {};

local modID = "mod_legends_PTR";
::mods_registerMod(modID, 1.0, "Perk Trees Rework 0.11.4");

::mods_queue(modID, "mod_legends, mod_MSU, mod_fencerPerk, mod_WMS, mod_mediumArmorRework", function()
{
	this.Const.AI.VerboseMode = true;
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

	gt.Const.PTR.modAI();

	// Shield tree rework
	::mods_hookNewObject("ai/tactical/behaviors/ai_disengage", function (o)	{
		o.m.PossibleSkills.push("actives.str_move_under_cover_skill");
	});
});
