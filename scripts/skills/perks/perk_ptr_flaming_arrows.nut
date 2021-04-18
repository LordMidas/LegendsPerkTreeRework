this.perk_ptr_flaming_arrows <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_flaming_arrows";
		this.m.Name = this.Const.Strings.PerkName.PTRFlamingArrows;
		this.m.Description = this.Const.Strings.PerkDescription.PTRFlamingArrows;
		this.m.Icon = "ui/perks/ptr_flaming_arrows.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}	
});

