local gt = this.getroottable();

gt.Const.PTR.modWeapons <- function()
{
	::mods_hookExactClass("items/weapons/legend_staff", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookExactClass("items/weapons/legend_tipstaff", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookExactClass("items/weapons/greenskins/goblin_staff", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookExactClass("items/weapons/legend_staff_vala", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookExactClass("items/weapons/legend_staff_gnarled", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookExactClass("items/weapons/legend_mystic_staff", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_swordstaff", function(o) {
		o.m.Categories = "Spear/Sword, Two-Handed";
		o.m.WeaponType = this.Const.WMS.WeaponType.Spear | this.Const.WMS.WeaponType.Sword;

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
		o.m.WeaponType = this.Const.WMS.WeaponType.Spear | this.Const.WMS.WeaponType.Sword;

		o.onEquip = function()
		{
			this.weapon.onEquip();
			this.addSkill(this.new("scripts/skills/actives/thrust"));
			this.addSkill(this.new("scripts/skills/actives/spearwall"));
			this.addSkill(this.new("scripts/skills/actives/split"));
		}
	});

	::mods_hookNewObject("items/weapons/greenskins/goblin_spear", function(o) {
		o.m.Categories = "Sword/Spear, One-Handed";
		o.m.WeaponType = this.Const.WMS.WeaponType.Sword | this.Const.WMS.WeaponType.Spear;

		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/riposte"));
		}
	});

	::mods_hookNewObject("items/weapons/named/named_goblin_spear", function(o) {
		o.m.Categories = "Sword/Spear, One-Handed";
		o.m.WeaponType = this.Const.WMS.WeaponType.Sword | this.Const.WMS.WeaponType.Spear;

		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/riposte"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_militia_glaive", function(o) {
		o.m.Categories = "Sword/Spear, Two-Handed";
		o.m.WeaponType = this.Const.WMS.WeaponType.Sword | this.Const.WMS.WeaponType.Spear;

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
		o.m.WeaponType = this.Const.WMS.WeaponType.Sword | this.Const.WMS.WeaponType.Spear;

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
		o.m.WeaponType = this.Const.WMS.WeaponType.Sword | this.Const.WMS.WeaponType.Spear;

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
		o.m.WeaponType = this.Const.WMS.WeaponType.Sword | this.Const.WMS.WeaponType.Spear;

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

	::mods_hookExactClass("items/weapons/spetum", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/repel"));
		}
	});

	::mods_hookExactClass("items/weapons/warfork", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/repel"));
		}
	});

	::mods_hookExactClass("items/weapons/named/named_spetum", function(o) {
		local onEquip = o.onEquip;
		o.onEquip = function()
		{
			onEquip();
			this.addSkill(this.new("scripts/skills/actives/repel"));
		}
	});

	local curvedSwords = [
		"items/weapons/shamshir",
		"items/weapons/named/named_shamshir",
		"items/weapons/scimitar",
		"items/weapons/saif",
	];

	foreach (sword in curvedSwords)
	{
		::mods_hookNewObject(sword, function(o) {
			local onUpdateProperties = ::mods_getMember(o, "onUpdateProperties");
			o.onUpdateProperties <- function(_properties)
			{
				onUpdateProperties(_properties);
				if (this.getContainer().getActor().getSkills().hasSkill("perk.mastery.sword"))
				{
					_properties.ThresholdToInflictInjuryMult *= 0.75;
				}
			}

			local onEquip = o.onEquip;
			o.onEquip = function()
			{
				onEquip();
				local riposte = this.new("scripts/skills/actives/riposte");
				riposte.isHidden <- function()
				{
					return !this.getContainer().hasSkill("perk.ptr_exploit_opening");
				}
				this.addSkill(riposte);
			}
		});
	}

	::mods_hookExactClass("items/weapons/throwing_spear", function(o) {
		local create = o.create;
		o.create = function()
		{
			create();
			this.m.ShieldDamage = 52;
		}
	});
}
