compliance
getSourceFromFile
	
	^self sourcePointer ifNotNil: [self getSourceFromFileAt: self sourcePointer]