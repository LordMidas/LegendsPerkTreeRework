local gt = this.getroottable();

gt.Const.PTR.modWeapons <- function()
{
	::mods_hookNewObject("items/weapons/legend_staff", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_tipstaff", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/greenskins/goblin_staff", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_staff_vala", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_staff_gnarled", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_mystic_staff", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_swordstaff", function(o) {
		o.m.Categories = "Spear/Sword, Two-Handed";
		o.remakeApplicableMasteries();
		o.onEquip = function()
		{
			this.weapon.onEquip();
			this.addSkill(this.new("scripts/skills/actives/thrust"));
			this.addSkill(this.new("scripts/skills/actives/spearwall"));
			this.addSkill(this.new("scripts/skills/actives/split"));
		}
	});

	::mods_hookNewObject("items/weapons/named/legend_named_swordstaff", function(o) {
		o.m.Categories = "Spear/Sword, Two-Handed";
		o.remakeApplicableMasteries();
		o.onEquip = function()
		{
			this.weapon.onEquip();
			this.addSkill(this.new("scripts/skills/actives/thrust"));
			this.addSkill(this.new("scripts/skills/actives/spearwall"));
			this.addSkill(this.new("scripts/skills/actives/split"));
		}
	});

	# local glaives = [
	# 	"items/weapons/legend_militia_glaive",
	# 	"items/weapons/legend_glaive",
	# 	"items/weapons/legend_battle_glaive",
	# 	"items/weapons/named/legend_named_glaive"
	# ]

	::mods_hookNewObject("items/weapons/legend_militia_glaive", function(o) {
		o.m.Categories = "Sword/Spear, Two-Handed";
		o.remakeApplicableMasteries();

		o.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		o.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
		o.m.IsDoubleGrippable = false;
		o.m.RegularDamage = 35;
		o.m.RegularDamageMax = 50;

		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/riposte"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_glaive", function(o) {
		o.m.Categories = "Sword/Spear, Two-Handed";
		o.remakeApplicableMasteries();

		o.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		o.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
		o.m.IsDoubleGrippable = false;
		o.m.RegularDamage = 50;
		o.m.RegularDamageMax = 55;

		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/riposte"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_battle_glaive", function(o) {
		o.m.Categories = "Sword/Spear, Two-Handed";
		o.remakeApplicableMasteries();

		o.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		o.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
		o.m.IsDoubleGrippable = false;
		o.m.RegularDamage = 55;
		o.m.RegularDamageMax = 60;

		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/riposte"));
		}
	});

	::mods_hookNewObject("items/weapons/named/legend_named_glaive", function(o) {
		o.m.Categories = "Sword/Spear, Two-Handed";
		o.remakeApplicableMasteries();

		o.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		o.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
		o.m.IsDoubleGrippable = false;

		local baseWeapon = this.new("scripts/items/weapons/legend_battle_glaive");
		o.m.Condition = baseWeapon.m.Condition;
		o.m.ConditionMax = baseWeapon.m.ConditionMax;
		o.m.RegularDamage = baseWeapon.m.RegularDamage;
		o.m.RegularDamageMax = baseWeapon.m.RegularDamageMax;
		o.m.ArmorDamageMult = baseWeapon.m.ArmorDamageMult;
		o.m.ChanceToHitHead = baseWeapon.m.ChanceToHitHead;
		o.m.DirectDamageMult = baseWeapon.m.DirectDamageMult;
		o.m.DirectDamageAdd = baseWeapon.m.DirectDamageAdd;
		o.m.StaminaModifier = baseWeapon.m.StaminaModifier;
		o.m.ShieldDamage = baseWeapon.m.ShieldDamage;
		o.m.AdditionalAccuracy = baseWeapon.m.AdditionalAccuracy;
		o.m.FatigueOnSkillUse = baseWeapon.m.FatigueOnSkillUse;
		o.m.Value = 6000;
		o.randomizeValues();

		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/riposte"));
		}
	});

	# foreach (glaive in glaives)
	# {
	# 	::mods_hookNewObject(glaive, function(o) {
	# 		o.m.Categories = "Sword/Spear, Two-Handed";
	# 		o.remakeApplicableMasteries();
	#
	# 		o.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
	# 		o.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
	# 		o.m.IsDoubleGrippable = false;
	#
	# 		switch (glaive)
	# 		{
	# 			case "items/weapons/legend_militia_glaive":
	# 				o.m.RegularDamage = 35;
	# 				o.m.RegularDamageMax = 50;
	# 				break;
	#
	# 			case "items/weapons/legend_glaive":
	# 				o.m.RegularDamage = 50;
	# 				o.m.RegularDamageMax = 55;
	# 				break;
	#
	# 			case "items/weapons/legend_battle_glaive":
	# 				o.m.RegularDamage = 55;
	# 				o.m.RegularDamageMax = 60;
	# 				break;
	#
	# 			case "items/weapons/named/legend_named_glaive":
	# 				local baseWeapon = this.new("scripts/items/weapons/legend_battle_glaive");
	# 				o.m.Condition = baseWeapon.m.Condition;
	# 				o.m.ConditionMax = baseWeapon.m.ConditionMax;
	# 				o.m.RegularDamage = baseWeapon.m.RegularDamage;
	# 				o.m.RegularDamageMax = baseWeapon.m.RegularDamageMax;
	# 				o.m.ArmorDamageMult = baseWeapon.m.ArmorDamageMult;
	# 				o.m.ChanceToHitHead = baseWeapon.m.ChanceToHitHead;
	# 				o.m.DirectDamageMult = baseWeapon.m.DirectDamageMult;
	# 				o.m.DirectDamageAdd = baseWeapon.m.DirectDamageAdd;
	# 				o.m.StaminaModifier = baseWeapon.m.StaminaModifier;
	# 				o.m.ShieldDamage = baseWeapon.m.ShieldDamage;
	# 				o.m.AdditionalAccuracy = baseWeapon.m.AdditionalAccuracy;
	# 				o.m.FatigueOnSkillUse = baseWeapon.m.FatigueOnSkillUse;
	# 				o.m.Value = 6000;
	# 				o.randomizeValues();
	# 				break;
	# 		}
	#
	# 		local onEquip = o.onEquip;
	# 		o.onEquip = function()
	# 		{
	# 			onEquip();
	# 			this.addSkill(this.new("scripts/skills/actives/riposte"));
	# 		}
	# 	});
	# }
}
