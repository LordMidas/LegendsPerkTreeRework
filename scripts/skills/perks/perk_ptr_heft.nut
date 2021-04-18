this.perk_ptr_heft <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_heft";
		this.m.Name = this.Const.Strings.PerkName.PTRHeft;
		this.m.Description = this.Const.Strings.PerkDescription.PTRHeft;
		this.m.Icon = "ui/perks/ptr_heft.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onUpdate(_properties)
	{
		local weapon = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand);
		
		if (weapon != null && weapon.m.Categories.find("Axe") != null)
		{
			if (weapon.isItemType(this.Const.Items.ItemType.OneHanded))
			{
				_properties.DamageRegularMax += 20;
			}
			else
			{
				_properties.DamageRegularMax += 40;
			}
		}
	}
});

