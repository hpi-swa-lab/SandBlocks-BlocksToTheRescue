*BlocksToTheRescue
containsEmbeddedObjectAt: anInteger

	^ (self attributesAt: anInteger) anySatisfy: [:aTextAttribute |
		aTextAttribute anchoredMorph isNil not]