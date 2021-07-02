this.perk_ptr_bloodlust <- this.inherit("scripts/skills/skill", {
	m = {
		Count = 0,
		FatigueReductionPercentage = 5,
	},
	function create()
	{
		this.m.ID = "perk.ptr_bloodlust";
		this.m.Name = this.Const.Strings.PerkName.PTRBloodlust;
		this.m.Description = this.Const.Strings.PerkDescription.PTRBloodlust;
		this.m.Icon = "ui/perks/ptr_bloodlust.png";
		////this.m.IconMini = "perk_19_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getDescription()
	{
		return "This character gains increased vigor when next to bleeding enemies.";
	}

	function isHidden()
	{
		return this.m.Count == 0;
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		this.m.Count = _targetEntity.getSkills().getAllSkillsByID("effects.bleeding").len();
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_targetEntity.isAlive() || _targetEntity.isDying())
		{
			return;
		}

		local actor = this.getContainer().getActor();

		actor.setFatigue(this.Math.max(0, actor.getFatigue() - actor.getFatigue() * (this.m.Count * this.m.FatigueReductionPercentage * 0.01)));
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

	function onTurnStart()
	{
		local actor = this.getContainer().getActor();
		actor.setFatigue(this.Math.max(0, actor.getFatigue() - this.m.Count));
		this.m.Count = 0;
	}
});
