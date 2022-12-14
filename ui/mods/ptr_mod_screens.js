var scroll_createPerkTreeDIV = CharacterScreenPerksModule.prototype.createPerkTreeDIV
CharacterScreenPerksModule.prototype.createPerkTreeDIV = function (_perkTree, _parentDiv)
{
    var self = this;
    scroll_createPerkTreeDIV.call(this, _perkTree, _parentDiv)
    if(this.mListScrollContainer == undefined){
        for (var row = 0; row < _perkTree.length; ++row)
        {
            if (_perkTree[row].length > 13)
            {
                var centerDiv = $('.center').eq( row )
                centerDiv.find(".l-perk-container").css({ 'width': '4.0rem' });
                centerDiv.css({ 'width': (4.0 * _perkTree[row].length) + 'rem' }); // css is dumb?
                centerDiv.css({ 'left': ((660 - centerDiv.width()) / 2) + 'px' }); // css is dumb?
            }
        }
    }
};
