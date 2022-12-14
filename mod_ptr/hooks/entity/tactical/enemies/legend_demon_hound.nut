::mods_hookExactClass("entity/tactical/enemies/legend_demon_hound", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.nimble");
	}
});
