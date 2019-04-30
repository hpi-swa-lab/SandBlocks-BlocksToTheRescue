initialization
initializeMorphsForTransitions

	self transitionMorphsDict: (Dictionary new: self stateMachineModel states size).
	self stateMachineModel states do: [:state |
		state transitions do: [:transition |
			self addTransition: transition of: state]].