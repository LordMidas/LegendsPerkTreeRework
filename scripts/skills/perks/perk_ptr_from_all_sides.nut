this.perk_ptr_from_all_sides <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_from_all_sides";
		this.m.Name = this.Const.Strings.PerkName.PTRFromAllSides;
		this.m.Description = this.Const.Strings.PerkDescription.PTRFromAllSides;
		this.m.Icon = "ui/perks/ptr_from_all_sides.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local actor = this.getContainer().getActor();
		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return false;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.WMS.WeaponType.Flail))
		{
			return false;
		}

		return true;
	}

	function onBeforeAnySkillExecuted(_skill, _targetTile)
	{
		local targetEntity = _targetTile.getEntity();
		if (targetEntity == null || targetEntity.isAlliedWith(this.getContainer().getActor()) || !this.isEnabled())
		{
			return;
		}

		targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_from_all_sides_effect");
	}
});
