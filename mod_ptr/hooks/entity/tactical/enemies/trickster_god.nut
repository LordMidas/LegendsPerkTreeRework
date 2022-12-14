::mods_hookExactClass("entity/tactical/enemies/trickster_god", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.nimble");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_internal_hemorrhage"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_deep_impact"));
		local dentArmorPerk = ::new("scripts/skills/perks/perk_ptr_dent_armor");
		dentArmorPerk.m.IsForceEnabled = true;
		dentArmorPerk.m.IsForceTwoHanded = true;
		this.m.Skills.add(dentArmorPerk);

		local returnFavor = ::new("scripts/skills/effects/return_favor_effect");
		returnFavor.onTurnStart = function() {}; // overwrite the original function which removes it
		this.m.Skills.add(returnFavor);
	}
});
