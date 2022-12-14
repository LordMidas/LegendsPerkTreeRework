::mods_hookExactClass("entity/tactical/enemies/goblin_leader", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.getBaseProperties().DamageDirectMult = 1.0;
		this.m.Skills.addPerkTree(::Const.Perks.SwordTree, 7);
		this.m.Skills.add(::new("scripts/skills/perks/perk_bullseye"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_power_shot"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));
		local inspiringPresencePerk = ::new("scripts/skills/perks/perk_inspiring_presence");
		inspiringPresencePerk.m.IsForceEnabled = true;
		this.m.Skills.add(inspiringPresencePerk);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vengeful_spite"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_coup_de_grace"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_anticipation"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_entrenched"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.removeByID("perk.inspiring_presence");
			this.m.Skills.removeByID("perk.legend_composure");
		}
	}
});
