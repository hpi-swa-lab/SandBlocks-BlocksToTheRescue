event handling
dockMenuFor: aSymbol event: evt

	| menu transitions |
	menu := MenuMorph entitled: 'grab or create transition'.
	menu add: 'create transition' target: self selector: #createTransition.
	transitions := self transitionsForDock: aSymbol.
	transitions ifNotEmpty: [
		menu addLine.
		transitions do: [:transition | menu
			add: transition name
			target: self
			selector: #grabTransition:event:
			argumentList: {transition. evt}]].
	^ menu