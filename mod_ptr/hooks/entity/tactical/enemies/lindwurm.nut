::mods_hookExactClass("entity/tactical/enemies/lindwurm", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.addPerkTree(::Const.Perks.AxeTree);
		this.m.Skills.getSkillByID("perk.ptr_cull").m.IsForceEnabled = true;

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));

		local faPerk = ::new("scripts/skills/perks/perk_ptr_formidable_approach");
		faPerk.m.IsForceEnabled = true;
		this.m.Skills.add(faPerk);

		local softMetalPerk = ::new("scripts/skills/perks/perk_ptr_soft_metal");
		softMetalPerk.m.IsForceEnabled = true;
		this.m.Skills.add(softMetalPerk);

		local dentArmorPerk = ::new("scripts/skills/perks/perk_ptr_dent_armor");
		dentArmorPerk.m.IsForceEnabled = true;
		dentArmorPerk.m.IsForceTwoHanded = true;
		this.m.Skills.add(dentArmorPerk);
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.ActionPoints = this.getBaseProperties().ActionPoints;
			local maulerPerk = ::new("scripts/skills/perks/perk_ptr_mauler");
			maulerPerk.m.IsForceEnabled = true;
			this.m.Skills.add(maulerPerk);
		}
	}
});
