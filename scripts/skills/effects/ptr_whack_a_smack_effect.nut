this.ptr_whack_a_smack_effect <- this.inherit("scripts/skills/skill", {
	m = {
		MeleeSkillMalus = 25
	},
	function create()
	{
		this.m.ID = "effects.ptr_whack_a_smack";
		this.m.Name = "Whack a\' Smack";
		this.m.Icon = "ui/perks/ptr_whack_a_smack.png";
		//this.m.IconMini = "ptr_whack_a_smack_effect_mini";
		this.m.Overlay = "ptr_whack_a_smack_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = true;
	}
	
	function getDescription()
	{
		return "This character is prepared to immediately counter-attack on any failed attempt to attack them in melee.";
	}
	
	function isHidden()
	{
		return !this.isInEffect();
	}
	
	function isInEffect()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || weapon.getCategories().find("Staff") == null)
		{
			return false;
		}
		
		return true;
	}

	function onUpdate( _properties )
	{
		if (!this.isInEffect())
		{
			return;
		}
		
		_properties.IsRiposting = true;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (this.Tactical.TurnSequenceBar.getActiveEntity() == null || this.Tactical.TurnSequenceBar.getActiveEntity().getID() != this.getContainer().getActor().getID())
		{
			_properties.MeleeSkill -= this.m.MeleeSkillMalus;
		}
	}
});

