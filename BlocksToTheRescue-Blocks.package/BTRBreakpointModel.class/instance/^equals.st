accessing
= anotherObject

	^ self class = anotherObject class
		and: [self enabled = anotherObject enabled]
		and: [self once = anotherObject once]