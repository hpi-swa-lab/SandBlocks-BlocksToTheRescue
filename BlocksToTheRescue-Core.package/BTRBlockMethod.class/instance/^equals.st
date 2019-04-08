as yet unclassified
= anotherObject
	
	"Please override and call super in subclasses"
	^ anotherObject class = self class 
		and: [self selector = anotherObject selector]
		and: [self methodClass = anotherObject methodClass]