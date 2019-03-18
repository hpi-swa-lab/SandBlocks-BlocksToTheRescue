comparing
= anObject

	^ super = anObject or: 
		[anObject class = self class 
		and: [self constructor sourceString = anObject constructor sourceString] 
		and: [self adapter: self getValueSelector equals: anObject getValueSelector] 
		and: [self adapter: self setValueSelector equals: anObject setValueSelector] 
		and: [self adapter: self valueChangedSelector equals: anObject valueChangedSelector]]