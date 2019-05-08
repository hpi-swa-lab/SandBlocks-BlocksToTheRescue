accessing
writeBackTempsTo: aCollectionOfContexts
	
	| orginalContextsIndex |
	orginalContextsIndex := 0.
	aCollectionOfContexts do: 
		[:each | 1 to: each numTemps do: 
			[:localIndex | 
				orginalContextsIndex := orginalContextsIndex + 1. 
				each namedTempAt: localIndex put: (self namedTempAt: orginalContextsIndex)]].