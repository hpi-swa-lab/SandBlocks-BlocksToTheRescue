as yet unclassified
value

	^ self submorphs 
		at: 1
		ifAbsentPut: [self addMorph: Morph new]