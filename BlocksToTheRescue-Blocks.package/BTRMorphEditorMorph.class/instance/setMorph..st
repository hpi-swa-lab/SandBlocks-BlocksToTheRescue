morph
setMorph: aMorph

	^ self submorphs isEmpty ifTrue: 
		[self 
			addMorph: aMorph.
		aMorph addDependent: self].