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

	::mods_hookNewObject("items/weapons/legend_named_swordstaff", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});

	::mods_hookNewObject("items/weapons/legend_mage_swordstaff", function(o) {
		local oldonEquip = o.onEquip;
		o.onEquip = function()
		{
			oldonEquip();
			this.addSkill(this.new("scripts/skills/actives/ptr_staff_sweep_skill"));
		}
	});
}
