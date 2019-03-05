*BlocksToTheRescue
scanCharactersFrom: startIndex to: stopIndex inText: aText rightX: rightX 

	^ (aText containsEmbeddedObjectAt: startIndex)
		ifTrue: [#embeddedObject]
		ifFalse: [self scanCharactersFrom: startIndex to: stopIndex in: aText string rightX: rightX]