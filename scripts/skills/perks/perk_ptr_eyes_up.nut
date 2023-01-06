this.perk_ptr_eyes_up <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		TargetTile = null,
		ActorsAppliedTo = []
	},
	function create()
	{
		this.m.ID = "perk.ptr_eyes_up";
		this.m.Name = this.Const.Strings.PerkName.PTREyesUp;
		this.m.Description = this.Const.Strings.PerkDescription.PTREyesUp;
		this.m.Icon = "ui/perks/ptr_eyes_up.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Bow))
		{
			return false;
		}

		return true;
	}

	function onBeforeAnySkillExecuted( _skill, _targetTile, _targetEntity, _forFree )
	{
		this.m.TargetTile = _targetTile;
		this.m.ActorsAppliedTo = [];
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (this.isEnabled() && (_skill.isRanged() || this.m.IsForceEnabled)) this.applyEffect(_targetEntity);
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		if (this.isEnabled() && (_skill.isRanged() || this.m.IsForceEnabled)) this.applyEffect(_targetEntity);
	}

	function applyEffect( _targetEntity )
	{
		if (_targetEntity.isAlive() && !_targetEntity.isDying() && this.m.ActorsAppliedTo.find(_targetEntity.getID()) == null)
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_eyes_up_effect"));
			this.m.ActorsAppliedTo.push(_targetEntity.getID());
		}

		if (this.m.TargetTile != null)
		{
			for (local i = 0; i < 6; i++)
			{
				if (this.m.TargetTile.hasNextTile(i))
				{
					local nextTile = this.m.TargetTile.getNextTile(i);
					if (nextTile.IsOccupiedByActor)
					{
						local entity = nextTile.getEntity();
						if (entity.isAlliedWith(this.getContainer().getActor()) || this.m.ActorsAppliedTo.find(entity.getID() != null)) continue;

						local effect = ::new("scripts/skills/effects/ptr_eyes_up_effect");
						local previouslyAppliedEffect = entity.getSkills().getSkillByID("effects.ptr_eyes_up");
						if (previouslyAppliedEffect != null)
						{
							previouslyAppliedEffect.addStacks(-0.5);
						}
						else
						{
							effect.addStacks(-0.5);
						}
						entity.getSkills().add(effect);
						this.m.ActorsAppliedTo.push(entity.getID());
					}
				}
			}
		}
	}

	function onCombatFinished()
	{
		this.m.TargetTile = null;
		this.m.ActorsAppliedTo = [];
	}
});
