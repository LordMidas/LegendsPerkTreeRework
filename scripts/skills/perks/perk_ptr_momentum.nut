this.perk_ptr_momentum <- this.inherit("scripts/skills/skill", {
	m = {
		BonusPerTile = 10,
		StartingTile = null
	},
	function create()
	{
		this.m.ID = "perk.ptr_momentum";
		this.m.Name = this.Const.Strings.PerkName.PTRMomentum;
		this.m.Description = this.Const.Strings.PerkDescription.PTRMomentum;
		this.m.Icon = "ui/perks/ptr_momentum.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = "This character is using the momentum of their movement to add increased force to their throwing attack"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/damage_dealt.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + this.getBonus() + "%[/color] Ranged Damage"
			}			
		];
	}
	
	function isHidden()
	{
		return this.getBonus() == 0;
	}
	
	function onUpdate( _properties )
	{
		_properties.RangedDamageMult *= 1.0 + (this.getBonus() * 0.01);
	}
	
	function getBonus()
	{
		local actor = this.getContainer().getActor();
		if (this.m.StartingTile == null || !actor.isPlacedOnMap() || actor.getTile() == null)
		{
			return 0;
		}
		
		local weapon = this.getContainer().getActor().getMainhandItem();		
		if (weapon == null || weapon.getCategories().find("Throwing Weapon") == null)
		{
			return 0;
		}
		
		local distanceMoved = actor.getTile().getDistanceTo(this.m.StartingTile);
		
		return this.Math.maxf(0, distanceMoved * this.m.BonusPerTile);
	}
	
	function onWaitTurn()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();		
	}
	
	function onCombatStarted()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}
	
	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.StartingTile = null;	
	}
	
	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}
	
	function onTargetMissed( _skill, _targetEntity )
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}
	
	function onTurnEnd()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}
	
	function onTurnStart()
	{
		this.m.StartingTile = this.getContainer().getActor().getTile();
	}
});

