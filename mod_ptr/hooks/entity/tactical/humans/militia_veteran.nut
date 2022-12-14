::mods_hookExactClass("entity/tactical/humans/militia_veteran", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		local b = this.getBaseProperties();
		b.RangedDefense += 10;
		local c = this.getCurrentProperties();
		c.RangedDefense += 10;
		this.m.Skills.removeByID("perk.shield_expert");
		this.m.Skills.removeByID("perk.legend_specialist_militia_skill");
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_strength_in_numbers"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rotation"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_survival_instinct"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_anticipation"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.legend_specialist_militia_damage");
			this.m.Skills.removeByID("perk.legend_specialist_spearwall");
			this.m.Skills.removeByID("perk.legend_specialist_spearthrust");
			this.m.Skills.removeByID("perk.legend_smashing_shields");
			this.m.Skills.removeByID("perk.coup_de_grace");
			this.m.Skills.removeByID("perk.legend_back_to_basics");
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/effects/dodge_effect"));
		}
	}

	local assignRandomEquipment = o.assignRandomEquipment;
	o.assignRandomEquipment = function()
	{
		assignRandomEquipment();
		local mainhandItem = this.getMainhandItem();
		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(5);
			if (mainhandItem != null && mainhandItem.isItemType(::Const.Items.ItemType.OneHanded))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
			}
		}
		else
		{
			this.m.Skills.addTreeOfEquippedWeapon(4);
			if (mainhandItem != null && mainhandItem.isItemType(::Const.Items.ItemType.TwoHanded))
			{
				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
				}
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));
			}

			local offhandItem = this.getOffhandItem();
			if (offhandItem != null && offhandItem.isItemType(::Const.Items.ItemType.Shield))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_shield_expert"));
				this.m.Skills.add(::new("scripts/skills/perks/perk_str_phalanx"));
				if (this.Math.rand(1,100) <= 25)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_str_cover_ally"));
				}
			}
		}
	}
});
