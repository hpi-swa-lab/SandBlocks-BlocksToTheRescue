event handling
dockMenuFor: aSymbol event: evt

	| menu transitions |
	menu := MenuMorph entitled: 'grab or create transition'.
	menu 
		add: 'create transition' 
		target: self 
		selector: #createTransitionAt:event: 
		argumentList: {aSymbol. evt}.
	transitions := 
		((self incomingTransitionsForDock: aSymbol) collect: [:each | each -> '[incoming]']),
		((self outgoingTransitionsForDock: aSymbol) collect: [:each | each -> '[outgoing]']).
	transitions ifNotEmpty: [menu addLine].
	transitions do: [:transition | menu
		add: 'grab ', transition key name, ' ', transition value
		target: self
		selector: #grabTransition:event:
		argumentList: {transition key. evt}].
	^ menu