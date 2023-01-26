if (!("PTR" in this.getroottable()))
{
	::PTR <- {};
}

::PTR.Version <- "2.1.26";
::PTR.ModID <- "mod_legends_PTR";
::PTR.Name <- "Perk Trees Rework (PTR)";

::mods_registerMod(::PTR.ModID, ::PTR.Version, ::PTR.Name);

::mods_queue(::PTR.ModID, "mod_legends, mod_msu(>=1.2.0-rc.2), mod_betterFencing, mod_WMS, mod_legends_STR, mod_duelistDefense, <mod_clever_recruiter", function()
{	
	::PTR.Mod <- ::MSU.Class.Mod(::PTR.ModID, ::PTR.Version, ::PTR.Name);

	::PTR.Mod.ModSettings.requireSettingValue(::getModSetting("mod_msu", "ExpandedSkillTooltips"), true);
	::PTR.Mod.ModSettings.requireSettingValue(::getModSetting("mod_msu", "ExpandedItemTooltips"), true);

	::include("mod_ptr/load.nut");

	::PTR.modLegendsPerkTreeCreationSystem();
	delete ::PTR.modLegendsPerkTreeCreationSystem;

	// This is a temporary hook until Legends updates their skill_container with vanilla fixes
	// This fixes: http://battlebrothersgame.com/forums/topic/weapon-skills-lost-on-load-if-multiple-skills-call-unequip-and-equip-in-onadded/
	::mods_hookNewObject("skills/skill_container", function(o) {
		local add = o.add;
		o.add = function( _skill, _order = 0 )
		{
			local garbageSkills = {};
			foreach (skill in this.m.SkillsToAdd)
			{
				if (skill.isGarbage() && skill.getID() == _skill.getID())
				{
					local suffix = "" + skill;
					skill.m.ID += suffix;
					garbageSkills[skill] <- suffix;;
				}
			}

			local ret = add(_skill, _order);

			if (garbageSkills.len() > 0)
			{
				foreach (skill, suffix in garbageSkills)
				{
					skill.m.ID = skill.m.ID.slice(0, -suffix.len());
				}
			}

			return ret;
		}
	});

	::mods_registerJS("ptr_mod_screens.js");
});
