this.perk_ptr_bloodbath <- this.inherit("scripts/skills/skill", {
	m = {
		RestoredActionPoints = 3
	},
	function create()
	{
		this.m.ID = "perk.ptr_bloodbath";
		this.m.Name = this.Const.Strings.PerkName.PTRBloodbath;
		this.m.Description = this.Const.Strings.PerkDescription.PTRBloodbath;
		this.m.Icon = "ui/perks/ptr_bloodbath.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onOtherActorDeath( _killer, _victim, _skill, _deathTile, _corpseTile, _fatalityType )
	{
		if (_fatalityType != ::Const.FatalityType.None && _killer != null && _killer.getID() == this.getContainer().getActor().getID() && _skill != null && !_skill.isRanged() && _skill.isAttack() && ::Tactical.TurnSequenceBar.isActiveEntity(_killer))
		{
			_killer.setActionPoints(::Math.min(_killer.getActionPointsMax(), _killer.getActionPoints() + this.m.RestoredActionPoints));
			_killer.setDirty(true);
			this.spawnIcon("perk_ptr_bloodbath", _killer.getTile());
		}
	}
});

