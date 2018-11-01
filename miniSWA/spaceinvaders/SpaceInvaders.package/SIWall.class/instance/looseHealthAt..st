as yet unclassified
looseHealthAt: aPoint
	
	self collisionForm displayOn: self at: (aPoint - self collisionRange + ((self collisionRange x/2) @ 30)) rule: (Form erase).