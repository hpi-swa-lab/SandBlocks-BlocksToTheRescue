menu
initializeTransitionSubmenuIn: aMenuItemMorph event: evt

	| submenu |
	submenu := MenuMorph new.
	submenu
		add: 'add transition' target: self selector: #createTransition;
		addLine.
	self state transitions ifNotEmpty: [
		].
	aMenuItemMorph
		contents: ('transitions [{1}]' translated format: {self state transitions size});
		subMenu: submenu.
	^ aMenuItemMorph