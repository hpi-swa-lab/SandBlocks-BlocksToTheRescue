morph
setMorph: aMorph

	^ self viewPort submorphs isEmpty ifTrue: 
		[self viewPort 
			addMorph: aMorph.
		aMorph addDependent: self].