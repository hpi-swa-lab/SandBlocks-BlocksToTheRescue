initialization
initializeMorphsForStates

	self stateMorphsDict: (Dictionary new: self stateMachineModel states size).
	(self stateMachineModel statesSorted
		collect: [:state | self addState: state])
		reduce: [:last :next |
			next topLeft: last topRight + (self stateGaps@0)].