as yet unclassified
minHeight

	^ (self layers values collect: [:each | each size]) max + 1 * self nodeSpace y