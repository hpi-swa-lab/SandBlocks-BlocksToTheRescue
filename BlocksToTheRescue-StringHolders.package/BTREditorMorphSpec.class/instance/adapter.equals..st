comparing
adapter: aBlockOrSymbol equals: otherBlockOrSymbol

	^ (aBlockOrSymbol isBlock and: [otherBlockOrSymbol isBlock]) 
		ifTrue: [aBlockOrSymbol sourceString = otherBlockOrSymbol sourceString]
		ifFalse: [aBlockOrSymbol = otherBlockOrSymbol]