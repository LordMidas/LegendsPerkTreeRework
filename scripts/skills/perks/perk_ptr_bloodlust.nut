this.perk_ptr_bloodlust <- this.inherit("scripts/skills/skill", {
	m = {
		Count = 0,
		FatigueCostReductionPerCount = 10
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
	
	function updateCount()
	{
		this.m.Count = 0;
		
		local adjacentEnemies = this.getContainer().getActor().getActorsAtDistanceAsArray(1, this.Const.FactionRelation.Enemy);				
		foreach (enemy in adjacentEnemies)
		{
			local stacks = enemy.getSkills().getAllSkillsByID("effects.bleeding");
			foreach (stack in stacks)
			{			
				this.m.Count++;
			}
		}
	}
	
	function getBonus()
	{
		return this.m.Count * this.m.FatigueCostReductionPerCount;
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
				text = "Fatigue Cost of skills is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]" + this.getBonus() + "%[/color]"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Count + "[/color] Fatigue Recovery per turn"
			},
		];
	}

	function onUpdate( _properties )
	{
		this.updateCount();
		local bonus = this.getBonus();
		if (bonus > 0)
		{
			_properties.FatigueEffectMult *= 1.0 - (bonus * 0.01);
		}
	}
	
	function onTurnEnd()
	{
		this.updateCount();
	}
	
	function onTurnStart()
	{
		local actor = this.getContainer().getActor();
		actor.setFatigue(this.Math.max(0, actor.getFatigue() - this.m.Count));
		this.updateCount();
	}
});

