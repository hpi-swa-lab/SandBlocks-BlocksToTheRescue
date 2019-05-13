initialization
initializeMorphsForTransitions

	self transitionMorphsDict: (Dictionary new: self stateMachineModel states size).
	self stateMachineModel states do: [:state |
		state transitions do: [:transition |
			self registerTransition: transition of: state]].