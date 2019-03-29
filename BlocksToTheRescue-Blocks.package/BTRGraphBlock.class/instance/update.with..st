as yet unclassified
update: anAspect with: anObject

	(self nodes includes: anAspect) ifTrue: 
		[anObject = #delete ifTrue: [self removeNode: anAspect].
		anObject = #addEdge ifTrue: 
			[(self chooseNodeFrom: (self nodes copyWithout: anAspect))
				ifNotNil: [:target | self addEdge: anAspect -> target]]] 