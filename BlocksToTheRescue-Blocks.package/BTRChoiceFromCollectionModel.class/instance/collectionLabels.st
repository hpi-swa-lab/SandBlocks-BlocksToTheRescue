accessing
collectionLabels

	^ self readOnlyCollection
		collect: [:each | self labelRetriever value: each]