as yet unclassified
acceptDroppingMorph: aMorph event: anEvent

	super acceptDroppingMorph: aMorph event: anEvent.
	
	(self middleLeftBounds containsPoint: anEvent position)
		ifTrue: [self owner dropped: aMorph intoMiddleLeftPartOf: self].
		
	(self middleRightBounds containsPoint: anEvent position)
		ifTrue: [self owner dropped: aMorph intoUpperPartOf: self].