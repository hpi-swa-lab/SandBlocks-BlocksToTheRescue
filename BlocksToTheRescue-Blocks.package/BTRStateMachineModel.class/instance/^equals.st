as yet unclassified
= anotherObject

	^ anotherObject class = self class
		and: [self states = anotherObject states]
		and: [self startStateName = anotherObject startStateName]