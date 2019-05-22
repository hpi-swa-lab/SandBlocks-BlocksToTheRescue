accessing
unregisterTransition: aBTRStateTransition of: aBTRState

	^ (self transitionMorphsDict removeKey: aBTRState -> aBTRStateTransition)
			abandon