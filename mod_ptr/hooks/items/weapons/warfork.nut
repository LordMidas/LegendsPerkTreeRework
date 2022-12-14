::mods_hookExactClass("items/weapons/warfork", function(o) {
	local onEquip = o.onEquip;
	o.onEquip = function()
	{
		onEquip();
		this.addSkill(::new("scripts/skills/actives/repel"));
	}
});
