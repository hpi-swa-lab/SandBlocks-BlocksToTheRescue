accessing
depth

	self deprecated.
	^ (self stateMachineMorph gridPointAt: 0@(1 + (self stateMachineMorph distanceBetween: self startState and: self endState)))