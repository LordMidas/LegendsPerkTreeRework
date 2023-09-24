::mods_hookExactClass("items/weapons/named/legend_named_estoc", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.ItemType = this.Const.Items.ItemType.Named | this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.BlockedSlotType = ::Const.ItemSlot.Offhand;
		this.addWeaponType(this.Const.Items.WeaponType.BFFencing);
	}
});
