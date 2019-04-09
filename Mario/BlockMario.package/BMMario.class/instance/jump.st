movement
jump

	self velocity: self velocity - (self defaultVerticalMovement * self acceleration).
	self acceleration: (self acceleration - 0.1 max: 0).