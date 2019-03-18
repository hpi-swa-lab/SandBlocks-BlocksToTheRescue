morph
setMorph: aMorph

	self changeProportionalLayout.
	^ self submorphs isEmpty ifTrue: 
		[self 
			addMorph: aMorph.
		aMorph position: aMorph owner center.
		aMorph addDependent: self].