this.perk_ptr_opportunist <- this.inherit("scripts/skills/skill", {
	m = {
		APRecovered = 4,
		UsedTiles = []
	},
	function create()
	{
		this.m.ID = "perk.ptr_opportunist";
		this.m.Name = this.Const.Strings.PerkName.PTROpportunist;
		this.m.Description = this.Const.Strings.PerkDescription.PTROpportunist;
		this.m.Icon = "ui/perks/ptr_opportunist.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isInEffect()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();

		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Throwing))
		{
			return false;
		}

		return true;
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();

		if (!actor.isPlacedOnMap() || !this.isInEffect())
		{
			return;
		}

		if (actor.m.IsMoving)
		{
			local tile = actor.getTile();

			if (tile == null || !tile.IsCorpseSpawned || this.m.UsedTiles.find(tile.ID) != null)
			{
				return;
			}

			if (actor.getAlliedFactions().find(tile.Properties.get("Corpse").Faction) != null)
			{
				return;
			}

			local weapon = actor.getMainhandItem();

			weapon.setAmmo(this.Math.min(weapon.m.AmmoMax, weapon.m.Ammo + 1));

			actor.setActionPoints(this.Math.min(actor.getActionPointsMax(), actor.getActionPoints() + 4));
			actor.setDirty(true);
			this.spawnIcon("perk_ptr_opportunist", tile);

			this.m.UsedTiles.push(tile.ID);
		}
	}

	function onCombatStarted()
	{
		this.m.UsedTiles.clear();
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.UsedTiles.clear();
	}
});
