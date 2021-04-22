this.perk_ptr_open_wounds <- this.inherit("scripts/skills/skill", {
	m = {
		ChanceOtherWeapon = 25
	},
	function create()
	{
		this.m.ID = "perk.ptr_open_wounds";
		this.m.Name = this.Const.Strings.PerkName.PTROpenWounds;
		this.m.Description = this.Const.Strings.PerkDescription.PTROpenWounds;
		this.m.Icon = "ui/perks/ptr_open_wounds.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_skill.isAttack() || !_targetEntity.isAlive() || _damageInflictedHitpoints < this.Const.Combat.MinDamageToApplyBleeding || !_targetEntity.getSkills().hasSkillOfType(this.Const.SkillType.TemporaryInjury))
		{
			return;
		}

		if (_skill.m.InjuriesOnBody == this.Const.Injury.CuttingBody || _skill.m.InjuriesOnBody == this.Const.Injury.PiercingBody)
		{
			local actor = this.getContainer().getActor();
			local weapon = actor.getMainhandItem();

			local isCleaver = false;
			if (weapon != null && weapon.getCategories().find("Cleaver") != null)
			{
				isCleaver = true;
			}

			local roll = this.Math.rand(1, 100);
			if (isCleaver || roll <= this.m.ChanceOtherWeapon)
			{
				local effect = this.new("scripts/skills/effects/bleeding_effect");

				if (actor.getFaction() == this.Const.Faction.Player)
				{
					effect.setActor(this.getContainer().getActor());
				}

				local skillID = _skill.getID();
				if (skillID == "actives.cleave" || skillID == "actives.whip")
				{
					effect.setDamage(actor.getCurrentProperties().IsSpecializedInCleavers ? 10 : 5);
				}
				else if (skillID == "actives.hyena_bite_skill")
				{
					effect.setDamage(actor.isHigh() ? 10 : 5);
				}

				_targetEntity.getSkills().add(effect);
			}
		}
	}
});
