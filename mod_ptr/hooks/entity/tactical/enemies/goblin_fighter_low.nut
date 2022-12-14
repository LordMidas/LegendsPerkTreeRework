::mods_hookExactClass("entity/tactical/enemies/goblin_fighter_low", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.removeByType(::Const.SkillType.Perk);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_mastery_nets"));
		local kata = ::new("scripts/skills/perks/perk_ptr_kata");
		kata.m.IsForceEnabled = true;
		this.m.Skills.add(kata);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{			
			this.m.Skills.addTreeOfEquippedWeapon(3);
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(2);
		}
	}
});
