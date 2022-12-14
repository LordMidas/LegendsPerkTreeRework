::mods_hookExactClass("entity/tactical/enemies/necromancer", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		local inspiringPresencePerk = ::new("scripts/skills/perks/perk_inspiring_presence");
		inspiringPresencePerk.m.IsForceEnabled = true;
		this.m.Skills.add(inspiringPresencePerk);
	}
});
