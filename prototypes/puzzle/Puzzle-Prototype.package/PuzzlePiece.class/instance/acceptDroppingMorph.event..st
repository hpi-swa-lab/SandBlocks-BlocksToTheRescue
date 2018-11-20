event handling
acceptDroppingMorph: aMorph event: anEvent

	anEvent position y > (self height / 2 + self top)
		ifTrue: [self owner dropped: aMorph intoLowerPartOf: self]
		ifFalse: [self owner dropped: aMorph intoUpperPartOf: self].