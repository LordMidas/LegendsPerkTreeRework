::PTR.HooksHelper.goblinWeapon("items/weapons/greenskins/goblin_falchion");

::mods_hookExactClass("items/weapons/greenskins/goblin_falchion", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.RegularDamage = 30;
		this.m.RegularDamageMax = 35;
		this.m.ArmorDamageMult = 0.65;
		this.m.DirectDamageAdd = 0.05;
	}
});
