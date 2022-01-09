this.perk_ptr_target_practice <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_target_practice";
		this.m.Name = this.Const.Strings.PerkName.PTRTargetPractice;
		this.m.Description = this.Const.Strings.PerkDescription.PTRTargetPractice;
		this.m.Icon = "ui/perks/ptr_target_practice.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
		this.m.ItemActionOrder = this.Const.ItemActionOrder.First;
	}

	function onAfterUpdate(_properties)
	{
		local aimedShot = this.getContainer().getSkillByID("actives.aimed_shot")
		if (aimedShot != null)
		{
			aimedShot.m.ActionPointCost -= 1;
		}
	}

	function getItemActionCost(_items)
	{
		local count = 0;

		foreach (item in _items)
		{
			if (item != null && item.isItemType(this.Const.Items.ItemType.Ammo) && item.getSlotType() == this.Const.ItemSlot.Ammo)
			{
				count++;
			}
		}

		return count == 2 ? 0 : null;
	}
});
