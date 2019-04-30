comparing
= anotherObject
	
	^ self class = anotherObject class and: [self wrappedBlock = anotherObject wrappedBlock]