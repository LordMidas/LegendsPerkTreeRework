::mods_hookExactClass("items/weapons/legend_glaive", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.setCategories("Sword/Spear, Two-Handed");
		this.m.BlockedSlotType = ::Const.ItemSlot.Offhand;
		this.m.IsDoubleGrippable = false;
		this.m.RegularDamage = 50;
		this.m.RegularDamageMax = 55;
		this.m.ArmorDamageMult = 0.80;
	}

	local onEquip = o.onEquip;
	o.onEquip = function()
	{
		onEquip();
		this.addSkill(::new("scripts/skills/actives/swing"));
	}
});
