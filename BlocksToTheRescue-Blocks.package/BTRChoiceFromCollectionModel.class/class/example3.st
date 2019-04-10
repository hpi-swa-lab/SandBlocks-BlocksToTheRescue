as yet unclassified
example3

	^ BTRChoiceFromCollectionModel new
		collectionAccess: [Preferences allPreferences];
		labelRetriever: [:pref | pref name asString];
		yourself