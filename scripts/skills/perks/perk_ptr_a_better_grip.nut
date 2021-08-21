this.perk_ptr_a_better_grip <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_a_better_grip";
		this.m.Name = this.Const.Strings.PerkName.PTRABetterGrip;
		this.m.Description = this.Const.Strings.PerkDescription.PTRABetterGrip;
		this.m.Icon = "ui/perks/ptr_a_better_grip.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.VeryLast;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate(_properties)
	{
		local actor = this.getContainer().getActor();
		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.WMS.WeaponType.Spear) || !actor.isArmedWithShield())
		{
			return;
		}

		_properties.MeleeSkill += 5;
		_properties.MeleeDefense += 10;
	}

	function onAfterUpdate(_properties)
	{
		local actor = this.getContainer().getActor();
		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.WMS.WeaponType.Spear))
		{
			return;
		}

		local s = this.getContainer().getSkillByID("actives.thrust");
		if (s != null && actor.isDoubleGrippingWeapon())
		{
			s.m.MaxRange += 1;
		}

		if (weapon.isItemType(this.Const.Items.ItemType.TwoHanded))
		{
			_properties.MeleeDamageMult *= 1.25;
		}
	}
});
