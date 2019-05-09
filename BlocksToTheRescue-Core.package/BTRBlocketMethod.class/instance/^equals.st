comparing
= anotherObject
	
	"Please override and call super in subclasses"
	^ anotherObject class = self class 
		and: [self selector = anotherObject selector]
		and: [self methodClass = anotherObject methodClass]
		and: [self blockModel = anotherObject blockModel]