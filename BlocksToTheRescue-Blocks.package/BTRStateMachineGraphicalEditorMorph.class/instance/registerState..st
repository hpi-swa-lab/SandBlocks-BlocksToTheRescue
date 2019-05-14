accessing
registerState: aBTRState

	^ (self stateMorphsDict
			at: aBTRState
			put: (BTRStateMorph for: aBTRState on: self))
		center: self menuClickPosition;
		in: [:morph |
			self addMorphInFrontOfLayer: morph.
			morph addDependent: self];
		yourself