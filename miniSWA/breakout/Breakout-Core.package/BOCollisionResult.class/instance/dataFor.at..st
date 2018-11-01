accessing
dataFor: aBOEntity at: aSymbol

	^ aBOEntity == self ownEntity
		ifTrue: [self ownData at: aSymbol]
		ifFalse: [self othersData at: aSymbol]
	