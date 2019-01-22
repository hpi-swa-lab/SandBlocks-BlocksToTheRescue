as yet unclassified
categorizeSubmorphsOf: aMorph

	self fieldDictionary: Dictionary new.
	self differentGridFields do: [:each | self fieldDictionary at: each put: OrderedCollection new].
	aMorph submorphs do: [:each | self orderInFieldDictionary: each]