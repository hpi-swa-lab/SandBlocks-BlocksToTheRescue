collision attack protocoll
collisionWith: aGameElement
	super collisionWith: aGameElement.
	self reachedBy: aGameElement.