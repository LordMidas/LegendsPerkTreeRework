::mods_registerMod("costPreview", 3);
::mods_queue("costPreview", "mod_legends_PTR", function() {
	::PreviewTest <- {
		PreviewApplicableFunctions = [
			"getActionPointCost",
			"getFatigueCost"
		],

		function modifyPreview( _sourceTable, _previewTable, _field, _currChange, _newChange, _multiplicative )
		{
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
	};

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

		o.modifyPreviewField <- function( _field, _currChange, _newChange, _multiplicative )
		{
			::PreviewTest.modifyPreview(this.m, this.PreviewField, _field, _currChange, _newChange, _multiplicative);
		}

		o.modifyPreviewProperty <- function( _field, _currChange, _newChange, _multiplicative )
		{
			::PreviewTest.modifyPreview(this.getContainer().getActor().getCurrentProperties(), this.PreviewProperty, _field, _currChange, _newChange, _multiplicative);
		}

		foreach (func in ::PreviewTest.PreviewApplicableFunctions)
		{
			local oldFunc = o[func];
			o[func] = function()
			{
				if (!this.m.IsApplyingPreview) return oldFunc();

				local temp = {};
				foreach (k, v in this.PreviewField)
				{
					temp[k] <- this.m[k];
					this.m[k] = v;
				}

				local properties = this.getContainer().getActor().getCurrentProperties();
				foreach (k, v in this.PreviewProperty)
				{
					temp[k] <- properties[k];
					properties[k] = v;
				}

				local ret = oldFunc();

				if (temp.len() > 0)
				{
					foreach (k, v in this.PreviewField)
					{
						this.m[k] = temp[k];
					}

					local properties = this.getContainer().getActor().getCurrentProperties();
					foreach (k, v in this.PreviewProperty)
					{
						properties[k] = temp[k];
					}
				}

				return ret;
			}
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

		o.onAffordablePreview <- function( _skill, _movementTile )
		{
			foreach (skill in this.m.Skills)
			{
				skill.PreviewField.clear();
				skill.PreviewProperty.clear();
			}

			this.doOnFunction("onAffordablePreview", [
				_skill,
				_movementTile,
			], false);
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