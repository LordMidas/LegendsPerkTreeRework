this.ptr_intimidated_effect <- this.inherit("scripts/skills/skill", {
	m = {
		IntimidatorSkill = 0,
		PrevIntimidatorSkill = 0,
		Malus = 0.1
	},
	function create()
	{
		this.m.ID = "effects.ptr_intimidated";
		this.m.Name = "Intimidated";
		this.m.Icon = "ui/perks/ptr_intimidate.png";
		//this.m.IconMini = "ptr_intimidated_effect_mini";
		this.m.Overlay = "ptr_intimidated_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getDescription()
	{
		return "This character has been intimidated by attacks from large weapons.";
	}
	
	function isHidden()
	{
		return this.getContainer().getActor().getMoraleState() == this.Const.MoraleState.Ignore;
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
				icon = "ui/icons/bravery.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.Math.floor(this.m.IntimidatorSkill * 0.1) + "[/color] Resolve"
			}
		];
	}
	
	function onUpdate( _properties )
	{
		_properties.Bravery -= this.Math.max(1, this.Math.floor(this.m.IntimidatorSkill * 0.1)); 
	}
	
	function onRefresh()
	{
		this.m.IntimidatorSkill = this.Math.max(this.m.IntimidatorSkill, this.m.PrevIntimidatorSkill);		
	}
	
	function onTurnEnd()
	{
		this.removeSelf();
	}
});

