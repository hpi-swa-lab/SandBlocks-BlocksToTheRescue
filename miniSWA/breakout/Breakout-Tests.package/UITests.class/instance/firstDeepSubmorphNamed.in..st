as yet unclassified
firstDeepSubmorphNamed: aString in: aMorph

	^ self firstDeepSubmorphMatching: [:submorph | submorph knownName = aString] in: aMorph