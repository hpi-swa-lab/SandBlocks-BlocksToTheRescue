drag-and-drop
acceptDroppingMorph: aConnector event: anEvent

	super acceptDroppingMorph: aConnector event: anEvent.
	
	(self middleLeftBounds containsPoint: anEvent position)
		ifTrue: [self droppedIntoLeftPart: aConnector].
		
	(self middleRightBounds containsPoint: anEvent position)
		ifTrue: [self droppedIntoRightPart: aConnector].