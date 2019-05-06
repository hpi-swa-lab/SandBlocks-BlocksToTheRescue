as yet unclassified
labelPosition

	| i |
	i := self vertices size.
	^ i even
		ifTrue: [{self vertexAt: i // 2. self vertexAt: i // 2 + 1} average]
		ifFalse: [self vertexAt: i // 2]