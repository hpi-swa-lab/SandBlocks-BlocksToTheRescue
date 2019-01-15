as yet unclassified
acceptDroppingMorph: aConnector event: anEvent

	(self leftElement containsPoint: anEvent position)
		ifTrue: [^ self leftElement: aConnector].
		
	(self rightElement containsPoint: anEvent position)
		ifTrue: [^ self rightElement: aConnector].
	
	super acceptDroppingMorph: aConnector event: anEvent.