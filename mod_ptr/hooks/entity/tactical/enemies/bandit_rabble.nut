::mods_hookExactClass("entity/tactical/enemies/bandit_rabble", function(o) {
	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.removeByType(::Const.SkillType.Perk);

		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));

		local weapon = this.getMainhandItem();
		if (weapon != null)
		{
			if (weapon.isWeaponType(::Const.Items.WeaponType.Hammer))
			{
				this.m.Skills.addTreeOfEquippedWeapon(2);
			}
			else
			{
				this.m.Skills.addTreeOfEquippedWeapon(1);
			}
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("effects.dodge");				
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
		}
	}
});
