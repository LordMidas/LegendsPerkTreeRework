local gt = this.getroottable();

if (!("PTR" in gt))
{
	gt.PTR <- {};
}

gt.PTR.Version <- "2.1.12";
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

		::mods_hookExactClass("ai/tactical/behaviors/ai_throw_bomb", function(o) {
			local onExecute = o.onExecute;
			o.onExecute = function( _entity )
			{
				local ret = onExecute(_entity);
				if (ret && this.m.Skill == null)
				{
					// This assumes that the newly equipped bomb will always be in the offhand
					// If we don't want that, then we could first iterate over all equipped items, then call onExecute,
					// then iterate over all items again, detect the new item, and pass it
					_entity.getItems().payForAction([_entity.getOffhandItem()]);
				}
				return ret;
			}
		});

		::mods_hookExactClass("ai/tactical/behaviors/ai_switchto_ranged", function(o) {
			local onExecute = o.onExecute;
			o.onExecute = function( _entity )
			{
				local items = [_entity.getMainhandItem(), this.m.WeaponToEquip];
				local ret = onExecute(_entity);
				if (ret) _entity.getItems().payForAction(items);
				return ret;
			}
		});

		::mods_hookExactClass("ai/tactical/behaviors/ai_switchto_melee", function(o) {
			local onExecute = o.onExecute;
			o.onExecute = function( _entity )
			{
				local items = this.m.IsNegatingDisarm ? [_entity.getMainhandItem()] : [_entity.getMainhandItem(), this.m.WeaponToEquip];
				local ret = onExecute(_entity);
				if (ret) _entity.getItems().payForAction(items);
				return ret;
			}
		});

		::mods_hookExactClass("entity/tactical/actor", function(o) {
			local pickupMeleeWeaponAndShield = o.pickupMeleeWeaponAndShield;
			o.pickupMeleeWeaponAndShield = function( _tile )
			{
				local mainhandBefore = this.getMainhandItem();
				local offhandBefore = this.getOffhandItem();

				local ret = pickupMeleeWeaponAndShield(_tile);

				local mainhandAfter = this.getMainhandItem();
				local offhandAfter = this.getOffhandItem();

				local items = [];

				if (mainhandAfter != null && mainhandAfter != mainhandBefore) items.extend([mainhandBefore, mainhandAfter]);
				if (offhandAfter != null && offhandAfter != offhandBefore) items.extend([offhandBefore, offhandAfter]);

				this.getItems().payForAction(items);

				return ret;
			}
		});

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
				if (_item != null && _item != -1 && _item.getCurrentSlotType() != ::Const.ItemSlot.None && _item.getCurrentSlotType() != ::Const.ItemSlot.Bag && !::MSU.isNull(this.m.Actor) && this.m.Actor.isAlive())
				{
					foreach (item in this.m.Items[_item.getSlotType()])
					{
						if (item == _item)
						{
							this.m.Actor.getSkills().onUnequip(_item);
							break;
						}
					}
				}

				return unequip(_item);
			}
		});

		::mods_hookNewObject("skills/skill_container", function(o) {
			o.callSkillsFunction = function( _function, _argsArray = null, _update = true, _aliveOnly = false )
			{
				if (_argsArray == null) _argsArray = [null];
				else _argsArray.insert(0, null);

				local wasUpdating = this.m.IsUpdating;
				this.m.IsUpdating = true;
				this.m.IsBusy = false;
				this.m.BusyStack = 0;

				foreach (skill in this.m.Skills)
				{
					if (_aliveOnly && !this.m.Actor.isAlive())
					{
						break;
					}

					if (!skill.isGarbage())
					{
						_argsArray[0] = skill;
						skill[_function].acall(_argsArray);
					}
				}

				this.m.IsUpdating = wasUpdating;

				if (_update)
				{
					this.update();
				}
			}

			local onAnySkillExecuted = o.onAnySkillExecuted;
			o.onAnySkillExecuted = function( _skill, _targetTile, _targetEntity, _forFree )
			{
				this.m.IsPreviewing = false;
				onAnySkillExecuted(_skill, _targetTile, _targetEntity, _forFree);
			}

			o.onAffordablePreview <- function( _skill, _movementTile )
			{
				this.PreviewProperty.clear();
				foreach (skill in this.m.Skills)
				{
					skill.PreviewField.clear();
				}

				this.callSkillsFunction("onAffordablePreview", [
					_skill,
					_movementTile,
				], false);

				if (::MSU.Skills.QueuedPreviewChanges.len() == 0) return;

				local propertiesClone = this.getActor().getBaseProperties().getClone();

				local getChange = function( _function )
				{
					local skills = _function == "executeScheduledChanges" ? this.m.ScheduledChangesSkills : this.m.Skills;
					foreach (skill in skills)
					{
						if (!skill.isGarbage())
						{
							foreach (caller, changes in ::MSU.Skills.QueuedPreviewChanges)
							{
								if (caller == skill)
								{
									foreach (change in changes)
									{
										local target = change.TargetSkill != null ? change.TargetSkill.m : propertiesClone;
										change.ValueBefore = target[change.Field];
										::logInfo(_function + " value before: " + change.ValueBefore);
									}
								}
							}

							if (_function == "executeScheduledChanges") skill[_function]();
							else skill[_function](propertiesClone);

							foreach (caller, changes in ::MSU.Skills.QueuedPreviewChanges)
							{
								if (caller == skill)
								{
									foreach (change in changes)
									{
										if (typeof change.NewChange == "boolean") continue;

										local target = change.TargetSkill != null ? change.TargetSkill.m : propertiesClone;
										if (target[change.Field] == change.ValueBefore) continue;

										::logInfo(_function + " value after: " + target[change.Field]);

										if (change.Multiplicative) change.CurrChange *= target[change.Field] / change.ValueBefore;
										else change.CurrChange += target[change.Field] - change.ValueBefore;
									}
								}
							}
						}
					}
				}

				foreach (skill in this.m.Skills)
				{
					skill.softReset();
				}

				getChange("onUpdate");
				getChange("onAfterUpdate");
				getChange("executeScheduledChanges");

				foreach (changes in ::MSU.Skills.QueuedPreviewChanges)
				{
					foreach (change in changes)
					{
						local target;
						local previewTable;
						if (change.TargetSkill != null)
						{
							target = change.TargetSkill.m;
							previewTable = change.TargetSkill.PreviewField;
						}
						else
						{
							target = this.getActor().getCurrentProperties();
							previewTable = this.PreviewProperty;
						}

						if (!(change.Field in previewTable)) previewTable[change.Field] <- { Change = change.Multiplicative ? 1 : 0, Multiplicative = change.Multiplicative };

						if (change.Multiplicative)
						{
							previewTable[change.Field].Change *= change.NewChange / (change.CurrChange == 0 ? 1 : change.CurrChange);
						}
						else if (typeof change.NewChange == "boolean")
						{
							previewTable[change.Field].Change = change.NewChange;
						}
						else
						{
							previewTable[change.Field].Change += change.NewChange - change.CurrChange;
						}
					}
				}

				::MSU.Skills.QueuedPreviewChanges.clear();
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
