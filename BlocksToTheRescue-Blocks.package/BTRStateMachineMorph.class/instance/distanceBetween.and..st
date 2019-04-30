accessing
distanceBetween: startState and: endState

	^ self stateMachineModel statesSorted in: [:list |
		((list indexOf: startState) - (list indexOf: endState)) abs]