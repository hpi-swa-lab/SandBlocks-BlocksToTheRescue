as yet unclassified
= otherObject

	^ otherObject class = self class
	and: [self selector = otherObject selector]
	and: [self nodes = otherObject nodes]
	and: [self edges = otherObject edges]
	