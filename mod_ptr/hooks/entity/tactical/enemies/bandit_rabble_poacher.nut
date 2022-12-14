::mods_hookExactClass("entity/tactical/enemies/bandit_rabble_poacher", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_entrenched"));
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.backstabber");
			this.m.Skills.removeByID("trait.determined");
			this.m.Skills.add(::new("scripts/skills/perks/perk_ballistics"));
		}
	}
});
