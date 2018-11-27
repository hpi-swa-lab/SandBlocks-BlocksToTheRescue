movement
move

	self segments size > 0 
		ifTrue: [self segments shift position: self head position].
	self head position: self head position + self direction.
