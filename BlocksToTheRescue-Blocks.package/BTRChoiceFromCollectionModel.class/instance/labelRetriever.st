accessing
labelRetriever
	^ labelRetriever
		ifNil: [[:obj | obj asString]]