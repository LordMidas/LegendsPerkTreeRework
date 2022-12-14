::PTR.HooksHelper.goblinWeapon("items/weapons/greenskins/goblin_staff");

::mods_hookExactClass("items/weapons/greenskins/goblin_staff", function(o) {
	local onEquip = o.onEquip;
	o.onEquip = function()
	{
		onEquip();
		this.addSkill(::new("scripts/skills/actives/ptr_staff_sweep_skill"));
	}
});
