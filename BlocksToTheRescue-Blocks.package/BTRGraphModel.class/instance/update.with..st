as yet unclassified
update: anAspect with: anObject

	(self nodes includes: anAspect) ifTrue: 
		[anObject caseOf: {
			[#delete] -> [self removeNode: anAspect].
			[#addEdge] -> [(self chooseNodeFrom: (self nodes copyWithout: anAspect))
				ifNotNil: [:target | self addEdge: anAspect -> target]]
		} otherwise: [self changed: anObject]].
			