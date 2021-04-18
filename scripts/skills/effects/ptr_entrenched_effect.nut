this.ptr_entrenched_effect <- this.inherit("scripts/skills/skill", {
	m = {
		Bonus = 10,
		IsApplied = false
	},
	function create()
	{
		this.m.ID = "effects.ptr_entrenched";
		this.m.Name = "Entrenched";
		this.m.Icon = "ui/perks/ptr_entrenched.png";
		//this.m.IconMini = "ptr_entrenched_effect_mini";		
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsRemovedAfterBattle = true;
	}
	
	function isHidden()
	{
		return !this.m.IsApplied;
	}
	
	function getDescription()
	{
		return "This character\'s confidence in combat is increased due to support from adjacent allies.";
	}
	
	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();
		
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "%[/color] Ranged Skill"
		});
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/ranged_defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "%[/color] Ranged Defense"
		});
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/bravery.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.m.Bonus + "%[/color] Resolve"
		});
		
		return tooltip;
	}
	
	function onUpdate( _properties )
	{
		this.m.IsApplied = false;
		
		local weapon = this.getContainer().getActor().getMainhandItem();		
		if (weapon == null || !weapon.isItemType(this.Const.Items.ItemType.RangedWeapon))
		{
			return;
		}
		
		local adjacentAllies = this.getContainer().getActor().getActorsWithinDistanceAsArray(1, this.Const.FactionRelation.SameFaction);
		foreach (ally in adjacentAllies)
		{
			if (!ally.isEngagedInMelee() && ally.hasZoneOfControl())
			{
				_properties.RangedSkillMult *= (1.0 + this.m.Bonus * 0.01);				
				_properties.RangedDefenseMult *= (1.0 + this.m.Bonus * 0.01);
				_properties.BraveryMult *= (1.0 + this.m.Bonus * 0.01);
				this.m.IsApplied = true;
				break;
			}
		}
	}
});

