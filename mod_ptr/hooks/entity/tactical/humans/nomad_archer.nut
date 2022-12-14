::mods_hookExactClass("entity/tactical/humans/nomad_archer", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		if (this.Math.rand(1,100) <= 50)
		{
			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_target_practice"));
			}
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_flaming_arrows"));
		}
		else
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_eyes_up"));
		}


		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ballistics"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
		}
	}
});
