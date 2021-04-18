this.perk_ptr_heightened_reflexes <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_heightened_reflexes";
		this.m.Name = this.Const.Strings.PerkName.PTRHeightenedReflexes;
		this.m.Description = this.Const.Strings.PerkDescription.PTRHeightenedReflexes;
		this.m.Icon = "ui/perks/ptr_heightened_reflexes.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onUpdate( _properties )
	{		
		_properties.Initiative += 0.25 * this.getContainer().getActor().getBaseProperties().MeleeDefense;
	}
});

