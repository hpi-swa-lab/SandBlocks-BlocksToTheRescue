initialization
initializeMorphsForStates

	self stateMorphsDict: (IdentityDictionary new: self stateMachineModel states size).
	self stateMachineModel hasStates ifTrue: [
		self stateMachineModel statesSorted do: [:state | self registerState: state].
		self stateMorphs first position: self position.
		self stateMorphs reduce: [:last :next | next topLeft: last topRight + (self gridGaps x@0)]].