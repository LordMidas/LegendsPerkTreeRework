local gt = this.getroottable();

if (!("PTR" in gt))
{
	gt.PTR <- {};
}

gt.PTR.Version <- "2.0.8";
gt.PTR.ModID <- "mod_legends_PTR";
::PTR.Name <- "Perk Trees Rework (PTR)";

::mods_registerMod(gt.PTR.ModID, gt.PTR.Version, ::PTR.Name + ::PTR.Version);

::mods_queue(gt.PTR.ModID, "mod_legends, mod_msu(>=1.0.4), mod_betterFencing, mod_WMS, mod_legends_STR, mod_duelistDefense, <mod_clever_recruiter", function()
{	
	::PTR.Mod <- ::MSU.Class.Mod(::PTR.ModID, ::PTR.Version, ::PTR.Name);
	local setting = ::MSU.Mod.ModSettings.getSetting("ExpandedSkillTooltips");
	if (!setting.getValue())
	{
		if (setting.isLocked()) ::logError("PTR requires ExpandedSkillTooltips to be enabled, but it is locked and disabled by another mod.");
		setting.set(true);
	}
	if (setting.getValue()) setting.lock("Required by PTR");

	// temporary fix for MSU bug with item swapping
	if (::MSU.SemVer.compare(::MSU.SemVer.getTable(::MSU.Mod.getVersionString()), ::MSU.SemVer.getTable("1.1.0")) < 0)
	{
		::mods_hookNewObject("items/item_container", function(o) {
			o.getActionCost = function( _items )
			{
				this.m.ActionSkill = null;

				local info = this.getActor().getSkills().getItemActionCost(_items);

				info.sort(@(info1, info2) info1.Skill.getItemActionOrder() <=> info2.Skill.getItemActionOrder());

				local cost = ::Const.Tactical.Settings.SwitchItemAPCost;

				foreach (entry in info)
				{
					if (entry.Cost < cost)
					{
						cost = entry.Cost;
						this.m.ActionSkill = entry.Skill;
					}
				}

				return cost;
			}
		});
	}
	
	gt.PTR.modRetinue();
	delete gt.PTR.modRetinue;

	gt.PTR.modCharacterInjuries();
	delete gt.PTR.modCharacterInjuries;

	gt.PTR.modStrings();
	delete gt.PTR.modStrings;

	gt.PTR.modSkill();
	delete gt.PTR.modSkill;

	gt.PTR.modSkillContainer();
	delete gt.PTR.modSkillContainer;

	gt.PTR.modActor();
	delete gt.PTR.modActor;

	gt.PTR.modPlayer();
	delete gt.PTR.modPlayer;

	gt.PTR.modSkills();
	delete gt.PTR.modSkills;

	gt.PTR.modTraits();
	delete gt.PTR.modTraits;

	gt.PTR.modWeapons();
	delete gt.PTR.modWeapons;
	
	gt.PTR.modItems();
	delete gt.PTR.modItems;
	
	gt.PTR.modSettlement();	
	delete gt.PTR.modSettlement;
	
	gt.PTR.addPerksToPerkDefs();
	delete gt.PTR.addPerksToPerkDefs;
	
	gt.PTR.modDefenseTrees();
	delete gt.PTR.modDefenseTrees;
	
	gt.PTR.modWeaponTrees();
	delete gt.PTR.modWeaponTrees;
	
	gt.PTR.modTraitsTrees();
	delete gt.PTR.modTraitsTrees;
	
	gt.PTR.modClassTrees();
	delete gt.PTR.modClassTrees;
	
	gt.PTR.modMagicTrees();
	delete gt.PTR.modMagicTrees;	

	gt.PTR.createStylesTrees();
	delete gt.PTR.createStylesTrees;
	
	gt.PTR.createProfessionTrees();
	delete gt.PTR.createProfessionTrees;

	gt.PTR.createSpecialTrees();
	delete gt.PTR.createSpecialTrees;
	
	gt.PTR.modLegendsPerkTreeCreationSystem();
	delete gt.PTR.modLegendsPerkTreeCreationSystem;
	
	gt.PTR.modCharacterBackground();
	delete gt.PTR.modCharacterBackground;
	
	gt.PTR.modCharacterBackgrounds();
	delete gt.PTR.modCharacterBackgrounds;
	
	gt.PTR.modLegendsEnemyTrees();
	delete gt.PTR.modLegendsEnemyTrees;
	
	gt.PTR.modEnemies();
	delete gt.PTR.modEnemies;
	
	gt.PTR.modAI();
	delete gt.PTR.modAI;
	
	gt.PTR.modRunes();
	delete gt.PTR.modRunes;

	gt.PTR.modTooltipEvents();
	delete gt.PTR.modTooltipEvents;

	gt.PTR.modScenarios();
	delete gt.PTR.modScenarios;

	this.Const.Perks.updatePerkGroupTooltips();

	::mods_registerJS("ptr_mod_screens.js");
});
