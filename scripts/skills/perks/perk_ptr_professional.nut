this.perk_ptr_professional <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = false,
		PerksAdded = []
	},
	function create()
	{
		this.m.ID = "perk.ptr_professional";
		this.m.Name = this.Const.Strings.PerkName.PTRProfessional;
		this.m.Description = this.Const.Strings.PerkDescription.PTRProfessional;
		this.m.Icon = "ui/perks/ptr_professional.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAdded()
	{
		if (this.m.IsSpent)
		{
			return;
		}

		local bg = this.getContainer().getActor().getBackground();

		if (!this.getContainer().hasSkill("perk.shield_expert"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_shield_expert"));			
			local perk = this.Const.Perks.PerkDefs.ShieldExpert;
			bg.addPerk(perk);
			this.PerksAdded.push(perk);
		}

		if (!this.getContainer().hasSkill("perk.ptr_weapon_master"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_weapon_master"));
			local perk = this.Const.Perks.PerkDefs.PTRWeaponMaster;
			bg.addPerk(perk);
			this.PerksAdded.push(perk);
		}

		if (!this.getContainer().hasSkill("perk.duelist"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_duelist"));
			local perk = this.Const.Perks.PerkDefs.Duelist;
			bg.addPerk(perk);
			this.PerksAdded.push(perk);
		}

		if (!this.getContainer().hasSkill("perk.reach_advantage"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_reach_advantage"));
			local perk = this.Const.Perks.PerkDefs.ReachAdvantage;
			bg.addPerk(perk);
			this.PerksAdded.push(perk);		}

		if (!this.getContainer().hasSkill("perk.ptr_bloody_harvest"))
		{
			this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_bloody_harvest"));
			local perk = this.Const.Perks.PerkDefs.PTRBloodyHarvest;
			bg.addPerk(perk);
			this.PerksAdded.push(perk);
		}

		this.m.IsSpent = true;
	}

	function onRemoved()
	{
		foreach (perk in this.m.PerksAdded)
		{
			this.getContainer().removeByID(this.Const.Perks.PerkDefObjects[perk].ID);
		}
	}

	function onSerialize( _out )
	{
		this.skill.onSerialize(_out);
		local size = _out.writeU8(this.m.PerksAdded.len());
		foreach (perk in this.m.PerksAdded)
		{
			_out.writeU16(perk);
		}		
	}

	function onDeserialize( _in )
	{
		this.skill.onDeserialize(_in);

		this.m.IsSpent = true;

		this.m.PerksAdded = [];
		
		local size = _in.readU8();
		for (local i = 0; i < size; i++)
		{
			this.m.PerksAdded.push(_in.readU16());
		}
	}
});
