::mods_hookExactClass("entity/tactical/enemies/hyena", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();

		this.m.Skills.add(::new("scripts/skills/perks/perk_sundering_strikes"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		local softMetalPerk = ::new("scripts/skills/perks/perk_ptr_soft_metal");
		softMetalPerk.m.IsForceEnabled = true;
		this.m.Skills.add(softMetalPerk);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_crippling_strikes"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloodlust"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			local dismantlePerk = ::new("scripts/skills/perks/perk_ptr_dismantle");
			dismantlePerk.m.IsForceEnabled = true;
			this.m.Skills.add(dismantlePerk);
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vengeful_spite"));
		}
	}
});
