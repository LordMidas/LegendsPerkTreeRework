if (!("PTR" in this.getroottable()))
{
	::PTR <- {};
}

::PTR.Version <- "2.1.23";
::PTR.ModID <- "mod_legends_PTR";
::PTR.Name <- "Perk Trees Rework (PTR)";

::mods_registerMod(::PTR.ModID, ::PTR.Version, ::PTR.Name);

::mods_queue(::PTR.ModID, "mod_legends, mod_msu(>=1.1.1), mod_betterFencing, mod_WMS, mod_legends_STR, mod_duelistDefense, <mod_clever_recruiter", function()
{	
	::PTR.Mod <- ::MSU.Class.Mod(::PTR.ModID, ::PTR.Version, ::PTR.Name);

	::PTR.Mod.ModSettings.requireSettingValue(::getModSetting("mod_msu", "ExpandedSkillTooltips"), true);

	::include("mod_ptr/load.nut");

	::PTR.modLegendsPerkTreeCreationSystem();
	delete ::PTR.modLegendsPerkTreeCreationSystem;

	::mods_registerJS("ptr_mod_screens.js");
});
