event handling
dockMenuFor: aSymbol

	| menu transitions |
	menu := MenuMorph entitled: 'grab or create transition'.
	Transcript showln: 'menu for: ', aSymbol, ' in ', self state name.
	menu add: 'create transition' target: self selector: #createTransition.
	transitions := self transitionsForDock: aSymbol.
	transitions ifNotEmpty: [
		menu addLine.
		transitions do: [:transition |
			menu add: transition name target: self selector: #value]].
	^ menu