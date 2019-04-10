as yet unclassified
example1

	^ BTRChoiceFromCollectionModel new
		collectionAccess: [BTRAbstractBlockModel allBlockClasses];
		labelRetriever: [:modelClass | modelClass
			ifNil: ['nil']
			ifNotNil: [modelClass displayName]];
		yourself