::mods_hookExactClass("entity/tactical/humans/legend_peasant_blacksmith", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addPerkTree(::Const.Perks.BlacksmithProfessionTree);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_rattle"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_soft_metal"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_smackdown"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Hitpoints = this.getBaseProperties().Hitpoints;
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_dismantle"));
		}
	}
});
