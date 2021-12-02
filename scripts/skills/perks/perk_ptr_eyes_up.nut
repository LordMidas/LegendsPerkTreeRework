this.perk_ptr_eyes_up <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		SkillCount = 0,
		LastTargetID = 0,
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

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (this.isEnabled() && (_skill.isRanged() || this.m.IsForceEnabled) && _targetEntity.isAlive() && !_targetEntity.isDying() && !_targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_eyes_up_effect"));
		}
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		if (this.isEnabled() && (_skill.isRanged() || this.m.IsForceEnabled) && !_targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_eyes_up_effect"));
		}
	}
});
