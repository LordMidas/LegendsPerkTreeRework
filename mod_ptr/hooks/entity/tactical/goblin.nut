::mods_hookExactClass("entity/tactical/goblin", function(o) {
	local onInit = o.onInit;
	o.onInit = function ()
	{
		onInit();
		this.getSkills().add(::new("scripts/skills/racial/ptr_goblin_racial"));
	}
});
