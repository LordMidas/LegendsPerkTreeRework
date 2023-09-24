::mods_hookExactClass("entity/tactical/enemies/legend_bandit_warlord", function(o) {
	local onInit = o.onInit;
	o.onInit = function()
	{
		onInit();
		this.m.Skills.removeByID("perk.sundering_strikes");
		this.m.Skills.removeByID("perk.rally_the_troops");
		this.m.Skills.removeByID("perk.legend_full_force");
		this.m.Skills.removeByID("perk.lone_wolf");	
		this.m.Skills.removeByID("perk.legend_composure");	
		this.m.Skills.removeByID("perk.underdog");		
		this.m.Skills.removeByID("perk.legend_true_believer");										
		this.m.Skills.add(::new("scripts/skills/perks/perk_close_combat_archer"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_momentum"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_battle_flow"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_berserk"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_man_of_steel"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_rebound"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_know_their_weakness"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_exude_confidence"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bulwark"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_primal_fear"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_menacing"));
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_bully"));
		local inspiringPresencePerk = ::new("scripts/skills/perks/perk_inspiring_presence");
		inspiringPresencePerk.m.IsForceEnabled = true;
		this.m.Skills.add(inspiringPresencePerk);
		this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_vengeful_spite"));

		this.m.Skills.addPerkTree(::Const.Perks.OneHandedTree);
		this.m.Skills.addPerkTree(::Const.Perks.TwoHandedTree);

		if (("Assets" in this.World) && this.World.Assets != null && this.World.Assets.getCombatDifficulty() == ::Const.Difficulty.Legendary)
		{
			this.m.Skills.removeByID("perk.relentless");				
			this.m.Skills.removeByID("perk.legend_lithe");	
			this.m.Skills.removeByID("effects.dodge");		
			this.m.Skills.removeByID("perk.legend_battleheart");	
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_unstoppable"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_personal_armor"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_ptr_pattern_recognition"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_killing_frenzy"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_rally_the_troops"));
			this.m.Skills.add(::new("scripts/skills/perks/perk_underdog"));
		}

		local agent = actor.getAIAgent();

		if (agent.findBehavior(::Const.AI.Behavior.ID.Protect) != null)
		{
			agent.removeBehavior(::Const.AI.Behavior.ID.Protect);
			agent.finalizeBehaviors();
		}
	}

	local parentName = o.SuperName;
	local assignRandomEquipment = "assignRandomEquipment" in o ? o.assignRandomEquipment : null;
	o.assignRandomEquipment <- function()
	{
		if (assignRandomEquipment != null) assignRandomEquipment();
		else this[parentName].assignRandomEquipment();
		local weapon = this.getMainhandItem();
		local off = this.getOffhandItem();
		if (weapon == null && off != null)
		{
			this.m.Items.unequip(off);
			this.m.Items.equip(::new("scripts/items/weapons/legend_battle_glaive"));
		}
		this.m.Skills.addTreeOfEquippedWeapon();
	}
});
