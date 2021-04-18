this.ptr_en_garde_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_en_garde";
		this.m.Name = "En garde";
		this.m.Icon = "ui/perks/ptr_en_garde.png";
		//this.m.IconMini = "ptr_en_garde_effect_mini";
		this.m.Overlay = "ptr_en_garde_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsHidden = false;
		this.m.IsRemovedAfterBattle = true;
	}
	
	function getDescription()
	{
		return "This character is using his skill with the sword to stand his ground and gain increased Melee Defense.";
	}
	
	function onUpdate( _properties )
	{		
		_properties.MeleeDefense += 10;
	}
	
	function onTurnStart()
	{
		this.removeSelf();
	}
});

