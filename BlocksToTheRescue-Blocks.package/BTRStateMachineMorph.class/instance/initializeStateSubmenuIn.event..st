menu
initializeStateSubmenuIn: aMenuItemMorph event: evt

	| submenu |
	submenu := MenuMorph new.
	submenu
		add: 'add state' target: self selector: #createState;
		addLine.
	self stateMorphsDict ifNotEmpty: [
		(self stateMorphsDict associations limitedTo: self maximumStatesListed) 
			do: [:assoc | submenu
				add: assoc key name
				subMenu: (assoc value buildYellowButtonMenu: evt hand)].
		self stateMorphsDict size > self maximumStatesListed
			ifTrue: [ submenu
				add: ('and {1} more ...' translated format: {self stateMorphsDict size - self maximumStatesListed})
					target: self selector: #listAllStates]].
	aMenuItemMorph
		contents: ('states [{1}]' translated format: {self stateMorphsDict size});
		subMenu: submenu.
	^ aMenuItemMorph