::mods_registerMod("costPreview", 3);
::mods_queue("costPreview", "mod_legends_PTR", function() {
	::mods_hookExactClass("states/tactical_state", function(o) {
		local executeEntityTravel = o.executeEntityTravel;
		o.executeEntityTravel = function( _activeEntity, _mouseEvent )
		{
			_activeEntity.getSkills().m.IsPreviewing = false;
			executeEntityTravel(_activeEntity, _mouseEvent);
		}

		local executeEntitySkill = o.executeEntitySkill;
		o.executeEntitySkill = function( _activeEntity, _targetTile )
		{
			_activeEntity.getSkills().m.IsPreviewing = false;
			executeEntitySkill(_activeEntity, _targetTile);
		}
	});

	::mods_hookExactClass("ui/screens/tactical/modules/turn_sequence_bar/turn_sequence_bar", function(o) {
		local setActiveEntityCostsPreview = o.setActiveEntityCostsPreview;
		o.setActiveEntityCostsPreview = function( _costsPreview )
		{
			local activeEntity = this.getActiveEntity();
			if (activeEntity != null)
			{
				local skillID = "SkillID" in _costsPreview ? _costsPreview.SkillID : "";
				local skill;
				local movementTile;
				if (skillID == "")
				{					
					local movement = ::Tactical.getNavigator().getCostForPath(activeEntity, ::Tactical.getNavigator().getLastSettings(), activeEntity.getActionPoints(), activeEntity.getFatigueMax() - activeEntity.getFatigue());
					movementTile = movement.End;
				}
				else skill = activeEntity.getSkills().getSkillByID(skillID);
				activeEntity.getSkills().m.IsPreviewing = true;
				activeEntity.getSkills().onAffordablePreview(skill, movementTile);
			}

			setActiveEntityCostsPreview(_costsPreview);
		}

		local resetActiveEntityCostsPreview = o.resetActiveEntityCostsPreview;
		o.resetActiveEntityCostsPreview = function()
		{
			local activeEntity = this.getActiveEntity();
			if (activeEntity != null) activeEntity.getSkills().m.IsPreviewing = false;
			resetActiveEntityCostsPreview();
		}
	});

	::mods_hookBaseClass("skills/skill", function(o) {
		o = o[o.SuperName];
		o.m.IsApplyingPreview <- false;
		o.PreviewField <- {};
		o.PreviewProperty <- {};

		o.onAffordablePreview <- function( _skill, _movementTile )
		{			
		}

		o.modifyPreview <- function( _sourceTable, _previewTable, _field, _currChange, _newChange, _multiplicative )
		{
			if (!this.getContainer().m.IsCallingOnAffordablePreview)
			{
				::logError("Trying to modify affordable preview at a wrong time");
				return;
			}

			_previewTable[_field] <- _sourceTable[_field];

			if (_multiplicative)
			{
				_previewTable[_field] /= _currChange;
				_previewTable[_field] *= _newChange;
			}
			else if (typeof _newChange == "boolean")
			{
				_previewTable[_field] = _newChange;
			}
			else
			{
				_previewTable[_field] -= _currChange;
				_previewTable[_field] += _newChange;
			}
		}

		o.modifyPreviewField <- function( _field, _currChange, _newChange, _multiplicative )
		{
			this.modifyPreview(this.m, this.PreviewField, _field, _currChange, _newChange, _multiplicative);
		}

		o.modifyPreviewProperty <- function( _field, _currChange, _newChange, _multiplicative )
		{
			this.modifyPreview(this.getContainer().getActor().getCurrentProperties(), this.PreviewProperty, _field, _currChange, _newChange, _multiplicative);
		}

		o.getBeforePreview <- function()
		{
			local ret = {};
			foreach (k, v in this.PreviewField)
			{
				ret[k] <- this.m[k];
				this.m[k] = v;
			}

			local properties = this.getContainer().getActor().getCurrentProperties();
			foreach (k, v in this.PreviewProperty)
			{
				ret[k] <- properties[k];
				properties[k] = v;
			}

			return ret;
		}

		o.restoreFromBeforePreview <- function( _before )
		{
			if (_before.len() > 0)
			{
				foreach (k, v in this.PreviewField)
				{
					this.m[k] = _before[k];
				}

				local properties = this.getContainer().getActor().getCurrentProperties();
				foreach (k, v in this.PreviewProperty)
				{
					properties[k] <- _before[k];
				}
			}
		}

		local getActionPointCost = o.getActionPointCost;
		o.getActionPointCost = function()
		{
			if (!this.m.IsApplyingPreview) return getActionPointCost();

			local temp = this.getBeforePreview();
			local ret = getActionPointCost();
			this.restoreFromBeforePreview(temp);
			return ret;
		}

		local getFatigueCost = o.getFatigueCost;
		o.getFatigueCost = function()
		{
			if (!this.m.IsApplyingPreview) return getFatigueCost();
			
			local temp = this.getBeforePreview();
			local ret = getFatigueCost();
			this.restoreFromBeforePreview(temp);
			return ret;
		}

		local isAffordablePreview = o.isAffordablePreview;
		o.isAffordablePreview = function()
		{
			if (!this.getContainer().m.IsPreviewing) return isAffordablePreview();
			this.m.IsApplyingPreview = true;
			local ret = isAffordablePreview();
			this.m.IsApplyingPreview = false;
			return ret;
		}

		local getCostString = o.getCostString;
		o.getCostString = function()
		{
			if (!this.getContainer().m.IsPreviewing) return getCostString();
			local preview = ::Tactical.TurnSequenceBar.m.ActiveEntityCostsPreview;
			if (preview != null && preview.id == this.getContainer().getActor().getID())
			{
				this.m.IsApplyingPreview = true;
				local ret = getCostString();
				this.m.IsApplyingPreview = false;
				local skillID = this.getContainer().getActor().getPreviewSkillID();
				local str = " after " + (skillID == "" ? "moving" : "using " + this.getContainer().getSkillByID(skillID).getName());
				ret = ::MSU.String.replace(ret, "Fatigue[/color]", "Fatigue[/color]" + str);
				return ret;
			}

			return getCostString();
		}
	});

	::mods_hookNewObject("skills/skill_container", function(o) {
		o.m.IsPreviewing <- false;
		o.m.IsCallingOnAffordablePreview <- false;

		o.onAffordablePreview <- function( _skill, _movementTile )
		{
			local properties = this.getActor().getCurrentProperties();
			foreach (skill in this.m.Skills)
			{
				skill.PreviewField.clear();
				skill.PreviewProperty.clear();
			}

			this.m.IsCallingOnAffordablePreview <- true;
			this.doOnFunction("onAffordablePreview", [
				_skill,
				_movementTile,
			], false);
			this.m.IsCallingOnAffordablePreview <- false;
		}
	});

	::mods_hookExactClass("skills/perks/perk_ptr_vigorous_assault", function(o) {
		o.onAffordablePreview <- function( _skill, _movementTile )
		{
			if (_movementTile != null)
			{
				local predictedBonus = _movementTile.getDistanceTo(this.m.StartingTile) / 2;
				local currBonus = this.getContainer().getActor().getTile().getDistanceTo(this.m.StartingTile) / 2;

				if (predictedBonus - currBonus > 0)
				{
					foreach (skill in this.getContainer().getAllSkillsOfType(::Const.SkillType.Active))
					{
						if (skill.isAttack() && !skill.isRanged())
						{
							skill.modifyPreviewField("ActionPointCost", -currBonus, -predictedBonus, false);
							skill.modifyPreviewField("FatigueCostMult", 1 - currBonus * 0.1, 1 - predictedBonus * 0.1, true);
						}
					}
				}
			}

			if (_skill != null)
			{
				local currBonus = this.getContainer().getActor().getTile().getDistanceTo(this.m.StartingTile) / 2;
				if (currBonus > 0)
				{
					foreach (skill in this.getContainer().getAllSkillsOfType(::Const.SkillType.Active))
					{
						if (skill.isAttack() && !skill.isRanged())
						{
							skill.modifyPreviewField("ActionPointCost", -currBonus, 0, false);
							skill.modifyPreviewField("FatigueCostMult", 1 - currBonus * 0.1, 1, true);
						}
					}
				}
			}
		}
	});

	::mods_hookExactClass("skills/perks/perk_ptr_momentum", function(o) {
		o.onAffordablePreview <- function( _skill, _movementTile )
		{
			if (!this.isEnabled()) return;

			if (_movementTile != null)
			{
				local predictedBonus = _movementTile.getDistanceTo(this.getContainer().getActor().getTile()) + this.m.TilesMovedThisTurn;
				local currBonus = this.m.TilesMovedThisTurn;

				local skills = this.getContainer().getActor().getMainhandItem().getSkills();
				foreach (s in skills)
				{
					if (s.isAttack() && s.isRanged())
					{
						s.modifyPreviewField("ActionPointCost",  -::Math.min(this.m.ActionPointCost - 1, this.m.TilesMovedThisTurn), -::Math.min(this.m.ActionPointCost - 1, predictedBonus), false);
					}
				}
			}

			if (_skill != null && _skill.m.IsTargetingActor)
			{
				if (this.m.TilesMovedThisTurn > 0)
				{
					local skills = this.getContainer().getActor().getMainhandItem().getSkills();
					foreach (s in skills)
					{
						if (s.isAttack() && s.isRanged())
						{
							s.modifyPreviewField("ActionPointCost",  -this.m.TilesMovedThisTurn, 0, false);
						}
					}
				}
			}
		}
	});

	::mods_hookExactClass("skills/actives/ptr_en_garde_toggle_skill", function(o) {
		o.onAffordablePreview <- function( _skill, _movementTile )
		{
			if (!this.isHidden()) this.modifyPreviewField("FatigueCost", 0, 15, false);
		}
	});
});