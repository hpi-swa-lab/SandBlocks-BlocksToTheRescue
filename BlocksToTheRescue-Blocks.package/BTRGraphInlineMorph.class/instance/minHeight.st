as yet unclassified
minHeight

	^ (self maxOf: (self layers values collect: [:each | each size]))  + 1 * self nodeSpace y