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

	local glaives = [
		"items/weapons/legend_militia_glaive",
		"items/weapons/legend_glaive",
		"items/weapons/legend_battle_glaive",
		"items/weapons/named/legend_named_glaive"
	]

	foreach (glaive in glaives)
	{
		::mods_hookNewObject(glaive, function(o) {
			o.m.Categories = "Sword/Spear, Two-Handed";
			o.remakeApplicableMasteries();

			o.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
			o.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
			o.m.IsDoubleGrippable = false;

			local onEquip = o.onEquip;
			o.onEquip = function()
			{
				onEquip();
				this.addSkill(this.new("scripts/skills/actives/riposte"));
			}
		});
	}
}
