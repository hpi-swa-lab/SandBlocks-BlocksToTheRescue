collision
collisionWith: aGameElement
	super collisionWith: aGameElement.
	aGameElement canBePickedUp 
		ifTrue: [aGameElement pickUpBy: self].