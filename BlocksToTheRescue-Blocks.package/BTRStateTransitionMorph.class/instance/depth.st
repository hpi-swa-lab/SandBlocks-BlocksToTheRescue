accessing
depth

	^ 40 * (1 + (self stateMachineMorph distanceBetween: self startState and: self endState))