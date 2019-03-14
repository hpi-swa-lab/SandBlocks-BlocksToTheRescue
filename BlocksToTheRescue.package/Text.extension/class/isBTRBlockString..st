*BlocksToTheRescue
isBTRBlockString: aString

	^ aString includesAllOf: {Character startOfHeading . Character startOfText}