*BlocksToTheRescue
fromBTRBlockString: aString

	^ (self isBTRBlockString: aString)
		ifTrue: [self parseBTRBlockString: aString]
		ifFalse: [self string: aString attributes: #()].
	
	