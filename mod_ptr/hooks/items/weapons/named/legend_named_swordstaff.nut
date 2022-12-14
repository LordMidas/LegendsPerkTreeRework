::mods_hookNewObject("items/weapons/named/legend_named_swordstaff", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.setCategories("Spear/Sword, Two-Handed");
		this.m.RangeMin = 1;
		this.m.RangeMax = 2;

		local baseWeapon = ::new("scripts/items/weapons/legend_swordstaff");
		this.m.Condition = baseWeapon.m.Condition;
		this.m.ConditionMax = baseWeapon.m.ConditionMax;
		this.m.RegularDamage = baseWeapon.m.RegularDamage;
		this.m.RegularDamageMax = baseWeapon.m.RegularDamageMax;
		this.m.ArmorDamageMult = baseWeapon.m.ArmorDamageMult;
		this.m.ChanceToHitHead = baseWeapon.m.ChanceToHitHead;
		this.m.DirectDamageMult = baseWeapon.m.DirectDamageMult;
		this.m.DirectDamageAdd = baseWeapon.m.DirectDamageAdd;
		this.m.StaminaModifier = baseWeapon.m.StaminaModifier;
		this.m.ShieldDamage = baseWeapon.m.ShieldDamage;
		this.m.AdditionalAccuracy = baseWeapon.m.AdditionalAccuracy;
		this.m.FatigueOnSkillUse = baseWeapon.m.FatigueOnSkillUse;
		this.m.Value = 4800;
		this.randomizeValues();
	}

	o.onEquip = function()
	{
		this.named_weapon.onEquip();			
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
