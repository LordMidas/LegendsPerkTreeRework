::PTR.HooksHelper.goblinWeapon("items/weapons/named/named_goblin_spear");

::mods_hookExactClass("items/weapons/named/named_goblin_spear", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.setCategories("Sword/Spear, One-Handed");
	}

	local onEquip = o.onEquip;
	o.onEquip = function()
	{
		onEquip();
		this.addSkill(::new("scripts/skills/actives/riposte"));
	}
});
