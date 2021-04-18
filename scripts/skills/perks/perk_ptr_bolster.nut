this.perk_ptr_bolster <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_bolster";
		this.m.Name = this.Const.Strings.PerkName.PTRBolster;
		this.m.Description = this.Const.Strings.PerkDescription.PTRBolster;
		this.m.Icon = "ui/perks/ptr_bolster.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function isInEffect()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();		
		if (weapon == null || weapon.getCategories().find("Polearm") == null)
		{
			return false;
		}
		
		return true;
	}
});

