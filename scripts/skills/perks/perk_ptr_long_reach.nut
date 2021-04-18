this.perk_ptr_long_reach <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_long_reach";
		this.m.Name = this.Const.Strings.PerkName.PTRLongReach;
		this.m.Description = this.Const.Strings.PerkDescription.PTRLongReach;
		this.m.Icon = "ui/perks/ptr_long_reach.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function isInEffect()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isItemType(this.Const.Items.ItemType.TwoHanded) || !weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon))
		{
			return false;
		}
		return true;
	}
});

