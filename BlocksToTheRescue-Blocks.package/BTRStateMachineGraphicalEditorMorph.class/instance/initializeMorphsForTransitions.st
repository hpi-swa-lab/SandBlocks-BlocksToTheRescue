initialization
initializeMorphsForTransitions

	self transitionMorphsDict: (IdentityDictionary new: self stateMachineModel states size).
	self stateMachineModel states do: [:state |
		state transitions do: [:transition |
			self registerTransition: transition]].