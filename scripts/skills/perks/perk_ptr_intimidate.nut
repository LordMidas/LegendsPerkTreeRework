this.perk_ptr_intimidate <- this.inherit("scripts/skills/skill", {
	m = {},
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
		//local actors = _targetEntity.getActorsWithinDistanceAsArray(2);
		//local attacker = this.getContainer().getActor();

		local effect = _targetEntity.getSkills().getSkillByID("effect.ptr_intimidated");
		if (effect == null)
		{
			effect = this.new("scripts/skills/effects/ptr_intimidated_effect");
			effect.m.IntimidatorSkill = this.getContainer().getActor().getCurrentProperties().MeleeSkill;
			_targetEntity.getSkills().add(effect);
		}
		else
		{
			effect.m.PrevIntimidatorSkill = effect.m.IntimidatorSkill;
			effect.m.IntimidatorSkill = this.getContainer().getActor().getCurrentProperties().MeleeSkill;
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
		if (!this.isInEffect() || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.isAlliedWith(this.getContainer().getActor()))
		{
			return;
		}

		this.applyDebuff(_targetEntity);
	}

	function isInEffect()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Polearm") == null)
		{
			return false;
		}

		return true;
	}
});
