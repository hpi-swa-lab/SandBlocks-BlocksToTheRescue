as yet unclassified
= otherObject

	^ otherObject class = self class
	and: [self nodes = otherObject nodes]
	and: [self edges = otherObject edges]

	