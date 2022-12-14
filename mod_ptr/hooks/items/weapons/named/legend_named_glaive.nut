::mods_hookExactClass("items/weapons/named/legend_named_glaive", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.setCategories("Sword/Spear, Two-Handed");
		this.m.BlockedSlotType = ::Const.ItemSlot.Offhand;
		this.m.IsDoubleGrippable = false;

		local baseWeapon = ::new("scripts/items/weapons/legend_battle_glaive");
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
		this.m.Value = 6000;
		this.randomizeValues();
	}

	local onEquip = o.onEquip;
	o.onEquip = function()
	{
		onEquip();
		this.addSkill(::new("scripts/skills/actives/swing"));
	}
});
