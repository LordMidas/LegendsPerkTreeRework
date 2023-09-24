::mods_hookExactClass("entity/tactical/humans/swordmaster", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.fast_adaption");
		this.m.Skills.removeByID("perk.duelist");
		this.m.Skills.add(::new("scripts/skills/perks/perk_bf_fencer"));

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.legend_full_force");
			this.m.Skills.removeByID("perk.feint");
			this.m.Skills.removeByID("perk.head_hunter");
			this.m.Skills.removeByID("perk.return_favor");
			this.m.Skills.removeByID("perk.legend_composure");
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_nine_lives"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_legend_assured_conquest"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_double_strike"));
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		if (::Const.DLC.Unhold && this.Math.rand(1,100) <= 20)
		{
			local weapon = this.getMainhandItem();
			if (weapon != null && weapon.getID().find("named") == null)
			{
				this.m.Items.unequip(this.m.Items.getItemAtSlot(::Const.ItemSlot.Mainhand));
				this.m.Items.equip(::new("scripts/items/weapons/fencing_sword"));
			}
		}
		this.m.Skills.addTreeOfEquippedWeapon();

		local attack = this.getSkills().getAttackOfOpportunity();
		if (attack != null)
		{
			if (attack.isDuelistValid())
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_duelist"));
			}
			else
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_reach_advantage"));
			}
		}
	}

	local makeMiniboss = o.makeMiniboss;
	o.makeMiniboss = function()
	{
		local ret = makeMiniboss();
		if (ret)
		{
			if (::Const.DLC.Unhold && this.Math.rand(1,100) <= 20)
			{
				this.m.Items.unequip(this.m.Items.getItemAtSlot(::Const.ItemSlot.Mainhand));
				this.m.Items.equip(::new("scripts/items/weapons/named/named_fencing_sword"));
			}

			local cullPerk = ::new("scripts/skills/perks/perk_ptr_cull");
			cullPerk.m.IsForceEnabled = true;
			this.m.Skills.add(cullPerk);

			if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
			{
				this.m.Skills.add(::new("scripts/skills/perks/perk_colossus"));
			}
		}

		return ret;
	}
});
