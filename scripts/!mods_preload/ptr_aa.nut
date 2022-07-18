local gt = this.getroottable();

if (!("PTR" in gt))
{
	gt.PTR <- {};
}

gt.PTR.Version <- "2.1.5";
gt.PTR.ModID <- "mod_legends_PTR";
::PTR.Name <- "Perk Trees Rework (PTR)";

::mods_registerMod(gt.PTR.ModID, gt.PTR.Version, ::PTR.Name + ::PTR.Version);

::mods_queue(gt.PTR.ModID, "mod_legends, mod_msu(>=1.1.1), mod_betterFencing, mod_WMS, mod_legends_STR, mod_duelistDefense, <mod_clever_recruiter", function()
{	
	::PTR.Mod <- ::MSU.Class.Mod(::PTR.ModID, ::PTR.Version, ::PTR.Name);
	local setting = ::MSU.Mod.ModSettings.getSetting("ExpandedSkillTooltips");
	if (!setting.getValue())
	{
		if (setting.isLocked()) ::logError("PTR requires ExpandedSkillTooltips to be enabled, but it is locked and disabled by another mod.");
		else setting.set(true);
	}
	if (setting.getValue()) setting.lock("Required by PTR");

	// Add onEquip and onUnequip events for skills if MSU is below v1.2.0 (as these events are expected to be added in v1.2.0)
	if (::MSU.SemVer.compareVersionWithOperator(::MSU.Mod, "<", "1.2.0"))
	{
		// ::MSU.Skills.addEvent("onEquip", function( _item ) {} );
		// ::MSU.Skills.addEvent("onUnequip", function( _item ) {} );

		::mods_hookNewObject("items/item_container", function(o) {
			local equip = o.equip;
			o.equip = function( _item )
			{
				local ret = equip(_item);
				if (ret == true && !::MSU.isNull(this.m.Actor) && this.m.Actor.isAlive()) this.m.Actor.getSkills().onEquip(_item);
				return ret;
			}

			local unequip = o.unequip;
			o.unequip = function( _item )
			{
				local ret = unequip(_item);
				if (ret == true && !::MSU.isNull(this.m.Actor) && this.m.Actor.isAlive()) this.m.Actor.getSkills().onUnequip(_item);
				return ret;
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
