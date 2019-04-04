instance creation
strengthsByName
	StrengthsByName ifNil: [self initializeStrengths].
	^StrengthsByName
		