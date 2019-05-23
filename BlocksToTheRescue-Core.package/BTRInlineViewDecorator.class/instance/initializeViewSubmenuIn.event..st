menu
initializeViewSubmenuIn: aMenuItemMorph event: anEvent

	| submenu inlineViewTypes |
	submenu := MenuMorph new.
	inlineViewTypes := self blockModel inlineViewTypes.
	inlineViewTypes do: [:aSymbol | 
		submenu
			add: aSymbol asString
			target: self blockModel
			selector: #inlineViewType:
			argument: aSymbol].
	aMenuItemMorph
		contents: ('views [{1}]' translated format: {inlineViewTypes size});
		subMenu: submenu.
	^ aMenuItemMorph