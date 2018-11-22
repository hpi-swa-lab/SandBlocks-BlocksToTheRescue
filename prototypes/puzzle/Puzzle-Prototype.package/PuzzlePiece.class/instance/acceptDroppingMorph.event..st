event handling
acceptDroppingMorph: aMorph event: anEvent

	(self lowerBounds containsPoint: anEvent position)
		ifTrue: [self owner dropped: aMorph intoLowerPartOf: self].
		
	(self upperBounds containsPoint: anEvent position)
		ifTrue: [self owner dropped: aMorph intoUpperPartOf: self].