as yet unclassified
layout: aMorph in: newBounds
	"Compute the layout for the given morph based on the new bounds"
	aMorph submorphsDo: [:m | 
		self useFullBounds 
			ifFalse: [m center: newBounds center]
			ifTrue: [m position: (newBounds center - (m fullBounds extent // 2))]].