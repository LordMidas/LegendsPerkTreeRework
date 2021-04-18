this.perk_ptr_tunnel_vision <- this.inherit("scripts/skills/skill", {
	m = {
		VisionBonus = 1,
		SkillBonus = 1.1
	},
	function create()
	{
		this.m.ID = "perk.ptr_tunnel_vision";
		this.m.Name = this.Const.Strings.PerkName.PTRTunnelVision;
		this.m.Description = this.Const.Strings.PerkDescription.PTRTunnelVision;
		this.m.Icon = "ui/perks/ptr_tunnel_vision.png";
		//this.m.IconMini = "ptr_tunnel_vision_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;		
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
		this.m.IsRemovedAfterBattle = true;
	}
	
	function getDescription()
	{
		return "This character\'s eyes and body are well-accustomed to moving in dark places.";
	}
	
	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.VisionBonus + "[/color] Vision"
		});
		
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Melee Skill"
		});
		
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "[/color] Ranged Skill"
		});
		
		return tooltip;
	}
		
	function getBonus()
	{
		return this.m.SkillBonus;
	}
	
	function onUpdate( _properties )
	{
		local bonus = this.getBonus();
		if (bonus > 0)
		{
			_properties.MeleeSkill += this.getBonus();
			_properties.RangedSkill += this.getBonus();			
		}
	}
});

