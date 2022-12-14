::mods_hookExactClass("entity/tactical/enemies/sand_golem", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));
		this.m.Skills.removeByID("perk.last_stand");

	}
});
