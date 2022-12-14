::mods_hookExactClass("items/weapons/legend_staff", function(o) {
	local onEquip = o.onEquip;
	o.onEquip = function()
	{
		onEquip();
		this.addSkill(::new("scripts/skills/actives/ptr_staff_sweep_skill"));
	}
});
