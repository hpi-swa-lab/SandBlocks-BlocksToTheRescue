comparing
= anotherObject
	
	"Should be implemented by users if they need a different equals check.
	Do not forget to implement hash as well."
	^ self class = anotherObject class
		and: [self shouldBeImplemented]