drag-and-drop
acceptDroppingMorph: aConnector event: anEvent

	(self lowerBounds containsPoint: anEvent position)
		ifTrue: [self connector dropped: aConnector intoLowerPartOf: self].
		
	(self upperBounds containsPoint: anEvent position)
		ifTrue: [self connector dropped: aConnector intoUpperPartOf: self].