accessing
depth

	^ (self stateMachineMorph gridPointAt: 0@(1 + (self stateMachineMorph distanceBetween: self startState and: self endState)))