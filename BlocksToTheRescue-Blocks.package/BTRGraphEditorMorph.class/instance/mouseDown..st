as yet unclassified
mouseDown: anEvent
	
	| eventPosition |
	eventPosition := anEvent position.
	self edgeViews associations 
		detect: [:each | (eventPosition - (each value closestPointTo: eventPosition)) r < 10] 
		ifFound: 
			[:edge | self graph removeEdge: edge key]
		ifNone: 
			[(self getMenu: anEvent shiftPressed)
			setInvokingView: self;
			popUpEvent: self activeHand lastEvent in: self world.].
	