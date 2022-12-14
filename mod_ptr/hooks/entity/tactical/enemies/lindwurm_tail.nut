::mods_hookExactClass("entity/tactical/enemies/lindwurm_tail", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Hitpoints = this.getBaseProperties().Hitpoints;
		this.m.ActionPoints = this.getBaseProperties().ActionPoints;
		this.m.Skills.addPerkTree(::Const.Perks.HammerTree, 4);
		local faPerk = ::new("scripts/skills/perks/perk_ptr_formidable_approach");
		faPerk.m.IsForceEnabled = true;
		this.m.Skills.add(faPerk);
	}
});
