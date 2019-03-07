as yet unclassified
addMorph: aMorph

	^ self submorphs isEmpty ifTrue: [super addMorph: aMorph].