local gt = this.getroottable();

gt.Const.PTR.modMSU <- function()
{	
	::mods_hookExactClass("skills/effects/msu_injuries_handler_effect", function(o) {
		local onBeforeTargetHit = o.onBeforeTargetHit;
		o.onBeforeTargetHit = function( _skill, _targetEntity, _hitInfo )
		{
			if (this.isKindOf(_targetEntity, "zombie") && _targetEntity.m.IsHeadless)
			{
				_hitInfo.BodyPart = this.Const.BodyPart.Body;
			}

			onBeforeTargetHit( _skill, _targetEntity, _hitInfo );
		}
	});
}