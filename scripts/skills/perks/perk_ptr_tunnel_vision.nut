this.perk_ptr_tunnel_vision <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_tunnel_vision";
		this.m.Name = this.Const.Strings.PerkName.PTRTunnelVision;
		this.m.Description = this.Const.Strings.PerkDescription.PTRTunnelVision;
		this.m.Icon = "ui/perks/ptr_tunnel_vision.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onCombatStarted()
	{
		if (!this.World.getTime().IsDaytime)
		{
			this.getContainer().add(this.new("scripts/skills/effects/ptr_tunnel_vision_effect"));
		}
	}

	function onAdded()
	{
		if (this.getContainer().getActor().isPlacedOnMap())
		{
			if (!this.World.getTime().IsDaytime)
			{
				this.getContainer().add(this.new("scripts/skills/effects/ptr_tunnel_vision_effect"));
			}
		}
	}
});
