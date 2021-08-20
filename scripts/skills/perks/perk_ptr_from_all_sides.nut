this.perk_ptr_from_all_sides <- this.inherit("scripts/skills/skill", {
	m = {
		SkillCount = 0,
		LastTargetID = 0
	},
	function create()
	{
		this.m.ID = "perk.ptr_from_all_sides";
		this.m.Name = this.Const.Strings.PerkName.PTRFromAllSides;
		this.m.Description = this.Const.Strings.PerkDescription.PTRFromAllSides;
		this.m.Icon = "ui/perks/ptr_from_all_sides.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local actor = this.getContainer().getActor();
		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}

		if (!_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}

		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.WMS.WeaponType.Flail))
		{
			return;
		}

		if (this.m.SkillCount == this.Const.SkillCounter && this.m.LastTargetID == _targetEntity.getID())
		{
			return;
		}

		this.m.SkillCount = this.Const.SkillCounter;
		this.m.LastTargetID = _targetEntity.getID();
		local effect = this.new("scripts/skills/effects/ptr_from_all_sides_effect");
		_targetEntity.getSkills().add(effect);

		if (_bodyPart == this.Const.BodyPart.Head)
		{
			effect.m.Count++;
		}
	}

	function onCombatStarted()
	{
		this.m.SkillCount = 0;
		this.m.LastTargetID = 0;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.SkillCount = 0;
		this.m.LastTargetID = 0;
	}

});
