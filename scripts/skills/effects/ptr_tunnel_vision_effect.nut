this.ptr_tunnel_vision_effect <- this.inherit("scripts/skills/skill", {
	m = {
		VisionBonus = 1,
		SkillBonus = 10
	},
	function create()
	{
		this.m.ID = "effects.ptr_tunnel_vision";
		this.m.Name = this.Const.Strings.PerkName.PTRTunnelVision;
		this.m.Description = "This character\'s eyes and body are well-accustomed to dark places.";
		this.m.Icon = "ui/perks/ptr_tunnel_vision.png";
		//this.m.IconMini = "ptr_tunnel_vision_effect_mini";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
		this.m.IsRemovedAfterBattle = true;
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
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.SkillBonus + "[/color] Melee Skill"
		});

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/melee_defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.SkillBonus + "[/color] Ranged Skill"
		});

		return tooltip;
	}

	function onUpdate( _properties )
	{
		_properties.MeleeSkillMult *= 1.0 + this.m.SkillBonus / 100.0;
		_properties.MeleeDefenseMult *= 1.0 + this.m.SkillBonus / 100.0;
	}
});
