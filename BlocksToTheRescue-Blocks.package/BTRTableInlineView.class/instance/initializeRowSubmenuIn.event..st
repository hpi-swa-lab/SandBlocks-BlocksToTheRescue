menu
initializeRowSubmenuIn: aMenuItemMorph event: anEvent

	| submenu |
	submenu := MenuMorph new
			add: 'add row' translated target: self blockModel selector: #addRow;
			add: 'remove row' translated target: self blockModel selector: #removeRow.
	aMenuItemMorph
		contents: 'adjust rows' translated;
		subMenu: submenu.
	^ aMenuItemMorph