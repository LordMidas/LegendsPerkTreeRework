this.perk_ptr_a_better_grip <- this.inherit("scripts/skills/skill", {
	m = {
		DamageMultAtTwoTiles = 0.66;
	},
	function create()
	{
		this.m.ID = "perk.ptr_a_better_grip";
		this.m.Name = this.Const.Strings.PerkName.PTRABetterGrip;
		this.m.Description = this.Const.Strings.PerkDescription.PTRABetterGrip;
		this.m.Icon = "ui/perks/ptr_a_better_grip.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.VeryLast;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate(_properties)
	{
		local actor = this.getContainer().getActor();
		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Spear) || !actor.isArmedWithShield())
		{
			return;
		}

		_properties.MeleeSkill += 5;
		_properties.MeleeDefense += 10;
	}

	function onAfterUpdate(_properties)
	{
		local actor = this.getContainer().getActor();
		local weapon = actor.getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Spear))
		{
			return;
		}

		local s = this.getContainer().getSkillByID("actives.thrust");
		if (s != null && actor.isDoubleGrippingWeapon())
		{
			s.m.MaxRange += 1;			
		}

		if (weapon.isItemType(this.Const.Items.ItemType.TwoHanded))
		{
			_properties.MeleeDamageMult *= 1.25;
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill.getID() == "actives.thrust")
		{
			_skill.resetField("HitChanceBonus");

			if (_targetEntity != null && this.getContainer().getActor().isDoubleGrippingWeapon())
			{
				local targetTile = _targetEntity.getTile();
				local myTile = this.getContainer().getActor().getTile();

				if (myTile.getDistanceTo(targetTile) == 2)
				{
					_properties.DamageTotalMult *= this.m.DamageMultAtTwoTiles;

					local betweenTiles = [];
					local malus = _skill.m.HitChanceBonus;
					
					for (local i = 0; i < 6; i++)
					{
						if (targetTile.hasNextTile(i))
						{
							local nextTile = targetTile.getNextTile(i);
							if (nextTile.getDistanceTo(myTile) == 1)
							{
								betweenTiles.push(nextTile);
								if (betweenTiles.len() == 2)
								{
									break;
								}
							}
						}
					}

					foreach (tile in betweenTiles)
					{
						if (tile.IsOccupiedByActor)
						{
							malus += 20;
						}
					}

					_skill.m.HitChanceBonus -= malus;
				}
			}	
		}
	}
});
