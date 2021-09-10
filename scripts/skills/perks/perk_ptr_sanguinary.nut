this.perk_ptr_sanguinary <- this.inherit("scripts/skills/skill", {
	m = {
		FatigueCostRefundPercentage = 25,
		TargetEntity = null
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

	function onBeforeAnySkillExecuted( _skill, _targetTile )
	{
		this.m.TargetEntity = _targetTile.getEntity();
	}

	function onAnySkillExecuted( _skill, _targetTile )
	{
		if (this.m.TargetEntity == null || !this.m.TargetEntity.isAlive() || this.m.TargetEntity.isDying())
		{
			return;
		}

		local actor = this.getContainer().getActor();

		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}

		if (this.m.TargetEntity.getID() == actor.getID() || this.m.TargetEntity.isAlliedWith(actor))
		{
			return;
		}

		if (this.m.TargetEntity.getSkills().hasSkill("effects.bleeding"))
		{
			local actor = this.getContainer().getActor();
			if (actor.getMoraleState() < this.Const.MoraleState.Confident && actor.getMoraleState() != this.Const.MoraleState.Fleeing)
			{
				actor.setMoraleState(actor.getMoraleState() + 1);
				this.spawnIcon("perk_ptr_sanguinary", actor.getTile());
			}
		}
	}

	function onTurnStart()
	{
		this.m.TargetEntity = null;
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.TargetEntity = null;
	}

	function onCombatStarted()
	{
		this.m.TargetEntity = null;
	}
});
