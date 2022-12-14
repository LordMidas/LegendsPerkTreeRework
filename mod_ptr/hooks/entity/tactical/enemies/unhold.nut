::mods_hookExactClass("entity/tactical/enemies/unhold", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		local dismantle = ::new("scripts/skills/perks/perk_ptr_dismantle");
		dismantle.m.IsForceEnabled = true;
		this.m.Skills.add(dismantle);
		local faPerk = ::new("scripts/skills/perks/perk_ptr_formidable_approach");
		faPerk.m.IsForceEnabled = true;
		this.m.Skills.add(faPerk);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.removeByID("perk.legend_battleheart");
			this.m.Skills.removeByID("perk.last_stand");
			this.m.Skills.add(::new("scripts/skills/perks/perk_underdog"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_deep_impact"));
			local dentArmorPerk = ::new("scripts/skills/perks/perk_ptr_dent_armor");
			dentArmorPerk.m.IsForceEnabled = true;
			dentArmorPerk.m.IsForceTwoHanded = true;
			this.m.Skills.add(dentArmorPerk);

			local returnFavor = ::new("scripts/skills/effects/return_favor_effect");
			returnFavor.onTurnStart = function() {}; // overwrite the original function which removes it
			this.m.Skills.add(returnFavor);
		}
	}
});
