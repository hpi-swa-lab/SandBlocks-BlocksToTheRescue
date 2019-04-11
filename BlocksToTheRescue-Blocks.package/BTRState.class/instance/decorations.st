printing
decorations

	| decorations |
	decorations := OrderedCollection new.
	self isStartState ifTrue: [decorations add: #start].
	self isFinalState ifTrue: [decorations add: #final].
	^ decorations