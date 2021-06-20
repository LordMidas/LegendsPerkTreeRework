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
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/named/legend_named_swordstaff", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legendary/legend_mage_swordstaff", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_militia_glaive", function(o) {
		o.m.Categories = "Sword/Spear, One-Handed";
		o.remakeApplicableMasteries();
	});

	::mods_hookNewObject("items/weapons/legend_militia_glaive", function(o) {
		o.m.Categories = "Sword/Spear, One-Handed";
		o.remakeApplicableMasteries();
	});

	::mods_hookNewObject("items/weapons/legend_glaive", function(o) {
		o.m.Categories = "Sword/Spear, One-Handed";
		o.remakeApplicableMasteries();
	});

	::mods_hookNewObject("items/weapons/legend_battle_glaive", function(o) {
		o.m.Categories = "Sword/Spear, One-Handed";
		o.remakeApplicableMasteries();
	});

	::mods_hookNewObject("items/weapons/named/legend_named_glaive", function(o) {
		o.m.Categories = "Sword/Spear, One-Handed";
		o.remakeApplicableMasteries();
	});
}
