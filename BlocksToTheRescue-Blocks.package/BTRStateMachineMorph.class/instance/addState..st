accessing
addState: aBTRState

	^ (self stateMorphsDict
			at: aBTRState
			put: (BTRStateMorph for: aBTRState))
		position: self position + self stateGaps;
		yourself