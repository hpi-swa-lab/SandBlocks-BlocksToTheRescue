accessing
registerState: aBTRState

	^ (self stateMorphsDict
			at: aBTRState
			put: (BTRStateMorph for: aBTRState on: self))
		position: self position + self gridGaps;
		yourself