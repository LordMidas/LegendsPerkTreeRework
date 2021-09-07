this.perk_bf_fencer <- this.inherit("scripts/skills/skill", {
	m = {
		FatigueMult = 0.85
	},
	function create()
	{
		this.m.ID = "perk.bf_fencer";
		this.m.Name = this.Const.Strings.PerkName.BFFencer;
		this.m.Description = this.Const.Strings.PerkDescription.BFFencer;
		this.m.Icon = "ui/perks/bf_fencer.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAfterUpdate( _properties )
	{
		local swordThrust = this.getContainer().getSkillByID("actives.bf_sword_thrust");
		if (swordThrust != null)
		{
			swordThrust.m.FatigueCostMult *= this.m.FatigueMult;
		}

		local lunge = this.getContainer().getSkillByID("actives.lunge");
		if (lunge != null)
		{
			lunge.m.FatigueCostMult *= this.m.FatigueMult;

			local weapon = this.getContainer().getActor().getMainhandItem();
			if (weapon != null && weapon.isWeaponType(this.Const.Items.WeaponType.BFFencing))
			{
				if (weapon.isItemType(this.Const.Items.ItemType.OneHanded))
				{
					lunge.m.ActionPointCost -= 1;
				}
				else
				{
					lunge.m.MaxRange += 1;
					lunge.m.Description = "A swift lunge towards a target up to 3 tiles away, followed by a precise thrusting attack to catch them unprepared. The faster you are, the more damage you do.";
				}
			}
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (!this.getContainer().getActor().isPlayerControlled())
		{
			return;
		}

		if (_skill.getID() == "actives.lunge" || _skill.getID() == "actives.bf_sword_thrust")
		{
			_properties.MeleeSkill += 10;
			_skill.m.HitChanceBonus += 10;
		}
	}
});

