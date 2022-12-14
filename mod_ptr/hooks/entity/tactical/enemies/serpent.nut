::mods_hookExactClass("entity/tactical/enemies/serpent", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
		local btrPerk = ::new("scripts/skills/perks/perk_ptr_between_the_ribs");
		btrPerk.m.IsForceEnabled = true;
		this.m.Skills.add(btrPerk);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_know_their_weakness"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			local fasPerk = ::new("scripts/skills/perks/perk_ptr_from_all_sides");
			fasPerk.m.IsForceEnabled = true;
			this.m.Skills.add(fasPerk);
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			local poisonEffect = ::new("scripts/skills/effects/poison_coat_effect");
			poisonEffect.m.Name = "Serpent Venom";
			this.m.Skills.add(poisonEffect);
			this.m.Skills.add(::new("scripts/skills/perks/perk_adrenalin"));
		}
	}
});
