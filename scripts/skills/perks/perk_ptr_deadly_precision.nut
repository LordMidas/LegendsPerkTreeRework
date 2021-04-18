this.perk_ptr_deadly_precision <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_deadly_precision";
		this.m.Name = this.Const.Strings.PerkName.PTRDeadlyPrecision;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDeadlyPrecision;
		this.m.Icon = "ui/perks/ptr_deadly_precision.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		local weapon = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand);
		
		if (weapon != null && weapon.m.Categories.find("Flail") != null)
		{
			_properties.DamageDirectAdd += 0.01 * this.Math.rand(0, 25); 
		}
	}
});

