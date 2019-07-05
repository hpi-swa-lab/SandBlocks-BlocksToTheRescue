menu
initializeColumnSubmenuIn: aMenuItemMorph event: anEvent

	| submenu |
	submenu := MenuMorph new
			add: 'add column' translated target: self blockModel selector: #addColumn;
			add: 'remove column' translated target: self blockModel selector: #removeColumn.
	aMenuItemMorph
		contents: 'adjust columns' translated;
		subMenu: submenu.
	^ aMenuItemMorph