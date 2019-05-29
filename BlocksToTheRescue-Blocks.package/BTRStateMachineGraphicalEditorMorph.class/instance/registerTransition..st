accessing
registerTransition: aBTRStateTransition

	^ (self transitionMorphsDict
			at: aBTRStateTransition
			put: (BTRStateTransitionMorph for: aBTRStateTransition on: self))
		updateVertices;
		in: [:morph | self addMorphInFrontOfLayer: morph];
		yourself