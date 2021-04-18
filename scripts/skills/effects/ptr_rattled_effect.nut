this.ptr_rattled_effect <- this.inherit("scripts/skills/skill", {
	m = {
		DamageReductionPercentage = 10
	},
	function create()
	{
		this.m.ID = "effects.ptr_rattled";
		this.m.Name = "Rattled";
		this.m.Icon = "ui/perks/ptr_rattle.png";
		//this.m.IconMini = "ptr_rattled_effect_mini";
		this.m.Overlay = "ptr_rattled_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = true;
	}
	
	function getDescription()
	{
		return "This character has received a blow which leaves them rattling, reducing their ability to swing their weapon properly.";
	}
	
	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/damage_dealt.png",
			text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.DamageReductionPercentage + "%[/color] Damage inflicted"
		});
		
		return tooltip;
	}

	function onUpdate( _properties )
	{
		_properties.DamageTotalMult *= 1.0 - (this.m.DamageReductionPercentage * 0.01);
	}
	
	function onTurnEnd()
	{
		this.removeSelf();
	}
});

