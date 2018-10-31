as yet unclassified
looseHealthAt: aPoint
	
	self collisionForm displayOn: self at: (aPoint - self collisionRange + ((self collisionRange x/2) @ 5)) rule: (Form erase).