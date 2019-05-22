accessing
registerTransition: aBTRStateTransition

	^ (self transitionMorphsDict
			at: aBTRStateTransition
			put: (BTRStateTransitionMorph for: aBTRStateTransition on: self))
		startDock: #bottom;
		endDock: #bottom;
		updateVertices;
		in: [:morph | self addMorphInFrontOfLayer: morph];
		yourself