as yet unclassified
resolve

	self toResolve do: [:each |
		each becomeForward: (self referenceDictionary at: each id)]