accessing
unregisterTransition: aBTRStateTransition

	^ (self transitionMorphsDict removeKey: aBTRStateTransition)
			abandon