::mods_hookExactClass("entity/tactical/enemies/unhold_armored", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.ptr_survival_instinct");
	}
});
