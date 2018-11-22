as yet unclassified
acceptDroppingMorph: aMorph event: anEvent

	super acceptDroppingMorph: aMorph event: anEvent.
	
	(self middleLeftBounds containsPoint: anEvent position)
		ifTrue: [self droppedIntoLeftPart: aMorph].
		
	(self middleRightBounds containsPoint: anEvent position)
		ifTrue: [self droppedIntoRightPart: aMorph].