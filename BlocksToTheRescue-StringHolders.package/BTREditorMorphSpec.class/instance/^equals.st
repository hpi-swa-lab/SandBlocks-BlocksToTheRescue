comparing
= anObject

	^ super = anObject or: 
		[anObject class = self class 
		and: [self constructor sourceString = anObject constructor sourceString] 
		and: [(self stringOf: self getValueSelector) = (self stringOf: anObject getValueSelector)]
		and: [(self stringOf: self setValueSelector) = (self stringOf: anObject setValueSelector)] 
		and: [(self stringOf: self valueChangedSelector) = (self stringOf: anObject valueChangedSelector)]]