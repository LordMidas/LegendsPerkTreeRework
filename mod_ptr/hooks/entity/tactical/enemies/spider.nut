::mods_hookExactClass("entity/tactical/enemies/spider", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("effects.dodge");
			this.m.Skills.add(::new("scripts/skills/perks/perk_overwhelm"));

			if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 30)
			{
				local b = this.getBaseProperties();
				b.MeleeDefense += 10;
				b.RangedDefense += 10;
				local c = this.getCurrentProperties();
				c.MeleeDefense += 10;
				c.RangedDefense += 10;
			}

			if (!this.Tactical.State.isScenarioMode() && this.World.getTime().Days >= 90)
			{
				local b = this.getBaseProperties();
				b.MeleeDefense += 10;
				b.RangedDefense += 10;
				local c = this.getCurrentProperties();
				c.MeleeDefense += 10;
				c.RangedDefense += 10;
			}
		}
	}
});
