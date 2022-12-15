this.perk_ptr_sanguinary <- this.inherit("scripts/skills/skill", {
	m = {
		FatigueCostRefundPercentage = 25,
		DidHit = false,
		WasBleeding = false
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
		if (_skill.isRanged() || !_skill.isAttack())
		{
			return;
		}

		local actor = this.getContainer().getActor();

		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID() || _targetEntity.getID() == actor.getID() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}

		this.m.DidHit = true;

		if (_targetEntity.getSkills().hasSkill("effects.bleeding"))
		{
			this.m.WasBleeding = true;
		}
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity, _forFree )
	{
		if (_targetEntity != null && this.m.DidHit && (this.m.WasBleeding || (_targetEntity.isAlive() && !_targetEntity.isDying() && _targetEntity.getSkills().hasSkill("effects.bleeding"))))
		{
			local actor = this.getContainer().getActor();
			if (actor.getMoraleState() < this.Const.MoraleState.Steady && actor.getMoraleState() != this.Const.MoraleState.Fleeing)
			{
				actor.setMoraleState(actor.getMoraleState() + 1);
				this.spawnIcon("perk_ptr_sanguinary", actor.getTile());
			}
		}

		this.m.DidHit = false;
		this.m.WasBleeding = false;
	}

	function onOtherActorDeath( _killer, _victim, _skill, _deathTile, _corpseTile, _fatalityType )
	{
		if (_fatalityType != ::Const.FatalityType.None && _skill != null && _skill.isAttack() && !_skill.isRanged() &&
			_killer != null && _killer.getID() == this.getContainer().getActor().getID() && ::Tactical.TurnSequenceBar.isActiveEntity(_killer)
			)
		{
			local fatigueCostRefund = ::Math.floor(_skill.m.FatigueCost * this.m.FatigueCostRefundPercentage * 0.01);
			_killer.setFatigue(::Math.max(0, _killer.getFatigue() - fatigueCostRefund));
			if (_killer.getMoraleState() < ::Const.MoraleState.Confident && _killer.getMoraleState() != ::Const.MoraleState.Fleeing)
			{
				_killer.setMoraleState(::Const.MoraleState.Confident);
				_skill.spawnIcon("perk_ptr_sanguinary", _killer.getTile());
			}
		}
	}
});
