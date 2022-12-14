::mods_hookExactClass("entity/tactical/enemies/unhold_frost", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.legend_muscularity");
		this.m.Skills.removeByID("perk.last_stand");

		this.m.Skills.addPerkTree(::Const.Perks.HammerTree);
		this.m.Skills.getSkillByID("perk.ptr_dismantle").m.IsForceEnabled = true;
		local dentArmorPerk = this.m.Skills.getSkillByID("perk.ptr_dent_armor");
		dentArmorPerk.m.IsForceEnabled = true;
		dentArmorPerk.m.IsForceTwoHanded = true;

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_underdog"));

		local faPerk = ::new("scripts/skills/perks/perk_ptr_formidable_approach");
		faPerk.m.IsForceEnabled = true;
		this.m.Skills.add(faPerk);

		local returnFavor = ::new("scripts/skills/effects/return_favor_effect");
		returnFavor.onTurnStart = function() {}; // overwrite the original function which removes it
		this.m.Skills.add(returnFavor);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
		}
	}
});
