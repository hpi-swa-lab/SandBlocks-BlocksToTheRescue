initialization
initializeMorphsForStates

	self stateMorphsDict: (Dictionary new: self stateMachineModel states size).
	self stateMachineModel hasStates ifTrue: [
		(self stateMachineModel statesSorted
			collect: [:state | self registerState: state])
			reduce: [:last :next |
				next topLeft: last topRight + (self gridGaps x@0)]].