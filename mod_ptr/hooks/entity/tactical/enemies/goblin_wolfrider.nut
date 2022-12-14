::mods_hookExactClass("entity/tactical/enemies/goblin_wolfrider", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.addPerkTree(::Const.Perks.DaggerTree, 3);
		this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bear_down"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_lone_wolf"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_the_rush_of_battle"));
		local kata = ::new("scripts/skills/perks/perk_ptr_kata");
		kata.m.IsForceEnabled = true;
		this.m.Skills.add(kata);

		if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 50)
		{
			if (this.World.getTime().Days < 100)
			{
				local b = this.getBaseProperties();
				b.MeleeDefense += 5;
				b.RangedDefense += 5;
				local c = this.getCurrentProperties();
				c.MeleeDefense += 5;
				c.RangedDefense += 5;
			}
			else
			{
				this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			}
		}

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.fast_adaption");					
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_push_the_advantage"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vigorous_assault"));
		}
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(5);
	}
});
