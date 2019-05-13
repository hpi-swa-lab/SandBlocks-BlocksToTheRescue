accessing
labelPosition

	| i |
	i := self vertices size.
	^ i = 1
		ifTrue: [self center]
		ifFalse: [i even
			ifTrue: [{self vertexAt: i // 2. self vertexAt: i // 2 + 1} average]
			ifFalse: [self vertexAt: i // 2]]