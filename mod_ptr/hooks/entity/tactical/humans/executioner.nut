::mods_hookExactClass("entity/tactical/humans/executioner", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.steel_brow");
		this.m.Skills.removeByID("perk.battle_flow");
		this.m.Skills.removeByID("perk.relentless");
		this.m.Skills.removeByID("perk.devastating_strikes");
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.crippling_strikes");
		this.m.Skills.removeByID("perk.coup_de_grace");
		this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.underdog");
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_battleheart"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bloody_harvest"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		}
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon();
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_sweeping_strikes"));
			this.m.Skills.removeByID("perk.reach_advantage");

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
			}
		}

		return ret;
	}
});
