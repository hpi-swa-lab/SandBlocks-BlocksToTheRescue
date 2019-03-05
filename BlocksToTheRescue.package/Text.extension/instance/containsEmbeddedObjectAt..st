*BlocksToTheRescue
containsEmbeddedObjectAt: anInteger

	^ (self attributesAt: anInteger ifAbsent: [{}]) anySatisfy: [:aTextAttribute |
		aTextAttribute anchoredMorph isNil not]