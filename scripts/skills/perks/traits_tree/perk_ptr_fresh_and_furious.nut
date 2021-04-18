this.perk_ptr_fresh_and_furious <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_fresh_and_furious";
		this.m.Name = this.Const.Strings.PerkName.PTRFreshAndFurious;
		this.m.Description = this.Const.Strings.PerkDescription.PTRFreshAndFurious;
		this.m.Icon = "ui/perks/ptr_fresh_and_furious.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onCombatStarted()
	{
		this.getContainer().add(this.new("scripts/skills/effects/ptr_fresh_and_furious_effect"));		
	}
	
});

