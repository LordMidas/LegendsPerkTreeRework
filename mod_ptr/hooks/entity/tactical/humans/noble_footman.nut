::mods_hookExactClass("entity/tactical/humans/noble_footman", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(4);
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));

		if (this.Math.rand(1,100) <= 25)
		{
			if (this.Math.rand(1,100) > 50)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_str_line_breaker"));
			}
			else
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));

			}
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(6);
			this.m.Skills.removeByID("perk.steel_brow");
			this.m.Skills.removeByID("perk.feint");
			this.m.Skills.removeByID("perk.stalwart");
			this.m.Skills.removeByID("perk.legend_specialist_shield_skill");
			this.m.Skills.removeByID("perk.legend_specialist_shield_push");
			this.m.Skills.removeByID("perk.legend_smashing_shields");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			this.m.Skills.removeByID("perk.shield_bash");
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigilant"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_underdog"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_return_favor"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_clarity"));

		}
	}
});
