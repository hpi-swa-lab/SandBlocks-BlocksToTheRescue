as yet unclassified
update: anAspect with: anObject

	(self nodes includes: anAspect) ifTrue: 
		[anObject caseOf: {
			[#delete] -> [self removeNode: anAspect].
			[#addEdge] -> [(self chooseNodeFrom: (self nodes reject: [:each | each == anAspect]))
				ifNotNil: [:target | self addEdge: anAspect -> target]].
			[#block] -> [self updateNodeBlock: anAspect].
		} otherwise: [self changed: anObject]].
	(self edges includes: anAspect) ifTrue: 
		[anObject caseOf: {
			[#valueName] -> [self updateNodeBlock: anAspect value].
		} otherwise: [self changed: anObject]]
			