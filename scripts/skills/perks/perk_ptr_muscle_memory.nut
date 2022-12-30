this.perk_ptr_muscle_memory <- this.inherit("scripts/skills/skill", {
	m = {
		MaxBonus = 30
	},
	function create()
	{
		this.m.ID = "perk.ptr_muscle_memory";
		this.m.Name = this.Const.Strings.PerkName.PTRMuscleMemory;
		this.m.Description = this.Const.Strings.PerkDescription.PTRMuscleMemory;
		this.m.Icon = "ui/perks/ptr_muscle_memory.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAfterUpdate(_properties)
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && weapon.isWeaponType(::Const.Items.WeaponType.Crossbow))
		{
			_properties.RangedDamageMult *= 1.0 + ::Math.minf(this.m.MaxBonus * 0.01, ::Math.maxf(0, (_properties.RangedSkill - 90) * 0.01));
		}
		else
		{
			local reloadHandgonne = this.getContainer().getSkillByID("actives.reload_handgonne");
			if (reloadHandgonne != null && reloadHandgonne.m.ActionPointCost > 1)
			{
				reloadHandgonne.m.ActionPointCost -= 2;
			}
		}
	}
});
