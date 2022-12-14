::mods_hookExactClass("skills/actives/footwork", function(o) {
	local onAfterUpdate = o.onAfterUpdate;
	o.onAfterUpdate = function( _properties )
	{
		this.m.FatigueCost = 10;
		local fat = this.getContainer().getActor().getItems().getStaminaModifier([::Const.ItemSlot.Body, ::Const.ItemSlot.Head]) * -1;
		this.m.FatigueCost = ::Math.min(20, this.m.FatigueCost + fat);
		onAfterUpdate(_properties);
	}
});
