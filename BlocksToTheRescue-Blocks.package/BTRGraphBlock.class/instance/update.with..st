as yet unclassified
update: anAspect with: anObject

	(self nodes includes: anAspect) ifTrue: 
		[anObject = #delete ifTrue: [self removeNode: anAspect].
		anObject = #addEdge ifTrue: [self addEdge: anAspect -> (self chooseNodeFrom: (self nodes copyWithout: anAspect))]] 