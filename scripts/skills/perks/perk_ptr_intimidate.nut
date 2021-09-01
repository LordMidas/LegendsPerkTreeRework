this.perk_ptr_intimidate <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_intimidate";
		this.m.Name = this.Const.Strings.PerkName.PTRIntimidate;
		this.m.Description = this.Const.Strings.PerkDescription.PTRIntimidate;
		this.m.Icon = "ui/perks/ptr_intimidate.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function applyDebuff(_targetEntity)
	{
		if (_targetEntity.getMoraleState() == this.Const.MoraleState.Ignore)
		{
			return;
		}

		local effect = _targetEntity.getSkills().getSkillByID("effect.ptr_intimidated");
		if (effect == null)
		{
			effect = this.new("scripts/skills/effects/ptr_intimidated_effect");
			effect.addIntimidator(this.getContainer().getActor().getID());
			_targetEntity.getSkills().add(effect);
		}
		else
		{
			effect.addIntimidator(this.getContainer().getActor().getID());
		}
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		if (!_skill.isAttack() || !this.isInEffect() || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}

		this.applyDebuff(_targetEntity);
	}

	function onTargetMissed( _skill, _targetEntity )
	{
		if (!_skill.isAttack() || !this.isInEffect() || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}

		this.applyDebuff(_targetEntity);
	}

	function isInEffect()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Polearm))
		{
			return false;
		}

		return true;
	}
});
