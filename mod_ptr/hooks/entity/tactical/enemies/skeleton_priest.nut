::mods_hookExactClass("entity/tactical/enemies/skeleton_priest", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		local inspiringPresencePerk = ::new("scripts/skills/perks/perk_inspiring_presence");
		inspiringPresencePerk.m.IsForceEnabled = true;
		this.m.Skills.add(inspiringPresencePerk);
	}
});
