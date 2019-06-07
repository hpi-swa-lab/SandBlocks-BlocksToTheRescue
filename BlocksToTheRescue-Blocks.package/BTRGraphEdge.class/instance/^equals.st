as yet unclassified
= anObject

	^ self class = anObject class
	and: [self key = anObject key]
	and: [self value = anObject value]
	and: [self valueName = anObject valueName]