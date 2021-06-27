this.perk_ptr_sanguinary <- this.inherit("scripts/skills/skill", {
	m = {
		FatigueCostRefundPercentage = 25,
		IsTargetBleeding = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_sanguinary";
		this.m.Name = this.Const.Strings.PerkName.PTRSanguinary;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSanguinary;
		this.m.Icon = "ui/perks/ptr_sanguinary.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		_properties.FatalityChanceMult *= 1.5;
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		this.m.IsTargetBleeding = _targetEntity.getSkills().hasSkill("effects.bleeding");
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_targetEntity.isAlive() || _targetEntity.isDying())
		{
			return;
		}

		if (this.m.IsTargetBleeding)
		{
			local actor = this.getContainer().getActor();
			actor.setMoraleState(this.Math.max(this.Const.MoraleState.Confident, actor.getMoraleState() + 1));
		}
	}
});
