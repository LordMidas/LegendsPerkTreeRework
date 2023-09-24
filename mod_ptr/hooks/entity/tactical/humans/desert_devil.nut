::mods_hookExactClass("entity/tactical/humans/desert_devil", function(o) {
	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		this.m.Skills.addTreeOfEquippedWeapon(5);

		local mainhandItem = this.getMainhandItem();
		if (mainhandItem != null)
		{
			if(mainhandItem.isItemType(::Const.Items.ItemType.TwoHanded))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_formidable_approach"));

				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_sweeping_strikes"));
				}
			}
			else
			{
				if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
				{
					this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
				}
			}
		}

		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.adrenalin");
		this.m.Skills.removeByID("perk.underdog");
		this.m.Skills.removeByID("perk.head_hunter");
		local kata = ::new("scripts/skills/perks/perk_ptr_kata");
		kata.m.IsForceEnabled = true;
		this.m.Skills.add(kata);
		this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.addTreeOfEquippedWeapon(7);
			this.m.Skills.add(::new("scripts/skills/perks/perk_relentless"));
			this.m.Skills.add(::new("scripts/skills/traits/fearless_trait"));

			if (mainhandItem != null && mainhandItem.isItemType(::Const.Items.ItemType.OneHanded))
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
			}

		}
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			local cullPerk = ::new("scripts/skills/perks/perk_ptr_cull");
			cullPerk.m.IsForceEnabled = true;
			this.m.Skills.add(cullPerk);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_battle_forged"));
			}
		}

		return ret;
	}
});
