this.perk_ptr_bloodlust <- this.inherit("scripts/skills/skill", {
	m = {
		Count = 0,
		FatigueReductionPercentage = 5
	},
	function create()
	{
		this.m.ID = "perk.ptr_bloodlust";
		this.m.Name = this.Const.Strings.PerkName.PTRBloodlust;
		this.m.Description = "This character gains increased vigor when next to bleeding enemies.";
		this.m.Icon = "ui/perks/ptr_bloodlust.png";
		this.m.IconMini = "ptr_bloodlust_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isHidden()
	{
		return this.m.Count == 0;
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Count + "[/color] Fatigue Recovery on the next turn"
			},
		];
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity )
	{
		if (_targetEntity == null || !_targetEntity.isAlive() || _targetEntity.isDying())
		{
			return;
		}

		local actor = this.getContainer().getActor();

		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}

		if (_targetEntity.getID() == actor.getID() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}

		this.m.Count = _targetEntity.getSkills().getAllSkillsByID("effects.bleeding").len();

		actor.setFatigue(this.Math.max(0, actor.getFatigue() - actor.getFatigue() * (this.m.Count * this.m.FatigueReductionPercentage * 0.01)));
	}

	function onTurnStart()
	{
		local actor = this.getContainer().getActor();
		actor.setFatigue(this.Math.max(0, actor.getFatigue() - this.m.Count));
		this.m.Count = 0;
	}

	function onCombatFinished()
	{
		this.m.Count = 0;
	}

	function onCombatStarted()
	{
		this.m.Count = 0;
	}
});
