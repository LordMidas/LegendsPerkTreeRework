this.perk_ptr_king_of_all_weapons <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_king_of_all_weapons";
		this.m.Name = this.Const.Strings.PerkName.PTRKingOfAllWeapons;
		this.m.Description = this.Const.Strings.PerkDescription.PTRKingOfAllWeapons;
		this.m.Icon = "ui/perks/ptr_king_of_all_weapons.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onTurnEnd()
	{
		local actor = this.getContainer().getActor();
		if (!actor.hasZoneOfControl())
		{
			return;
		}

		local weapon = actor.getMainhandItem();

		if (!actor.isPlacedOnMap() || weapon == null || !weapon.isItemType(this.Const.Items.ItemType.OneHanded) || weapon.getCategories().find("Spear") == null)
		{
			return;
		}

		if (!("State" in this.Tactical) || this.Tactical.State.isBattleEnded() || this.Tactical.State.isAutoRetreat())
		{
			return;
		}

		local skill = actor.getSkills().getAttackOfOpportunity();

		if (skill != null)
		{
			local target = actor.getRandomActorWithinDistance(skill.m.MaxRange, this.Const.FactionRelation.Enemy);

			if (target != null)
			{
				skill.useForFree(target.getTile());

				// skill.getContainer().setBusy(true);
				// this.Time.scheduleEvent(this.TimeUnit.Virtual, 300, function ( _skill )
				// {
					// _skill.attackEntity(actor, target);
					// _skill.m.IsDoingAttackMove = true;
					// _skill.getContainer().setBusy(false);
				// }.bindenv( skill ), skill);
			}
		}
	}
});
