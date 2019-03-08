as yet unclassified
setMorph: aMorph

	^ self submorphs isEmpty ifTrue: 
		[self addMorphCentered: aMorph.
		aMorph addDependent: self].