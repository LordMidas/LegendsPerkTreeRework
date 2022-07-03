this.perk_ptr_swordmaster_metzger <- this.inherit("scripts/skills/perks/perk_ptr_swordmaster_abstract", {
	m = {
		Weapons = [
			"weapon.shamshir",
			"weapon.named_shamshir",
			"weapon.scimitar",
			"weapon.saif",
		]
		Actor = null
	},
	function create()
	{
		this.perk_ptr_swordmaster_abstract.create();
		this.m.ID = "perk.ptr_swordmaster_metzger";
		this.m.Name = this.Const.Strings.PerkName.PTRSwordmasterMetzger;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSwordmasterMetzger;
		this.m.Icon = "ui/perks/ptr_swordmaster_metzger.png";
	}

	function onAdded()
	{
		local equippedItem = this.getContainer().getActor().getMainhandItem();
		if (equippedItem != null)
		{
			this.getContainer().getActor().getItems().unequip(equippedItem);
			this.getContainer().getActor().getItems().equip(equippedItem);
		}
		this.perk_ptr_swordmaster_abstract.onAdded();
	}

	function onRemoved()
	{
		local equippedItem = this.getContainer().getActor().getMainhandItem();
		if (equippedItem != null)
		{
			this.getContainer().getActor().getItems().unequip(equippedItem);
			this.getContainer().getActor().getItems().equip(equippedItem);
		}
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled) return true;

		if (this.perk_ptr_swordmaster_abstract.isEnabled())
		{
			local weapon = this.getContainer().getActor().getMainhandItem();
			if (weapon == null || this.m.Weapons.find(weapon.getID()) == null)
			{
				return false
			}
		}

		return true;
	}

	function onEquip( _item )
	{
		if (!this.isEnabled() || _item.getSlotType() != ::Const.ItemSlot.Mainhand) return;

		foreach (skill in _item.getSkills())
		{
			if (!skill.isHidden() && skill.getID() == "actives.decapitate") return;
		}

		_item.addSkill(this.new("scripts/skills/actives/decapitate"));
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_targetEntity.isAlive() || _targetEntity.isDying()) return;

		if (!_targetEntity.getCurrentProperties().IsImmuneToBleeding && _damageInflictedHitpoints >= ::Const.Combat.MinDamageToApplyBleeding)
		{
			local actor = this.getContainer().getActor();
			local effect = this.new("scripts/skills/effects/bleeding_effect");
			effect.setDamage(10);

			if (actor.getFaction() == this.Const.Faction.Player)
			{
				effect.setActor(this.getContainer().getActor());
			}

			_targetEntity.getSkills().add(effect);
		}
	}
});
