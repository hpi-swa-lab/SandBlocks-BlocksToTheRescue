as yet unclassified
showingToolString

	^ (self showingTool
		ifTrue: ['<yes>']
		ifFalse: ['<no>']), 'tool'	