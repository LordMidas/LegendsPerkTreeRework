::mods_hookExactClass("items/weapons/legend_swordstaff", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.setCategories("Spear/Sword, Two-Handed");
		this.m.RangeMin = 1;
		this.m.RangeMax = 2;
		this.m.Condition = 72.0;
		this.m.ConditionMax = 72.0;
		this.m.RegularDamage = 55;
		this.m.RegularDamageMax = 80;
	}

	o.onEquip = function()
	{
		this.weapon.onEquip();			
		local prong = ::new("scripts/skills/actives/prong_skill");
		this.addSkill(prong);

		local overheadStrike = ::new("scripts/skills/actives/overhead_strike");
		overheadStrike.m.IsIgnoredAsAOO = true;
		this.addSkill(overheadStrike);		

		local spearwall = ::new("scripts/skills/actives/spearwall");
		spearwall.m.Icon = "skills/active_124.png";
		spearwall.m.IconDisabled = "skills/active_124_sw.png";
		spearwall.m.Overlay = "active_124";
		spearwall.m.BaseAttackName = prong.getName();
		spearwall.setFatigueCost(spearwall.getFatigueCostRaw() + 5);
		spearwall.m.ActionPointCost = 6;
		this.addSkill(spearwall);
	}
});
