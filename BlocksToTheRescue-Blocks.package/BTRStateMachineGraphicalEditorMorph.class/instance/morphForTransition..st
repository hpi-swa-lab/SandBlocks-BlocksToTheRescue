accessing
morphForTransition: aBTRStateTransition

	^ self transitionMorphsDict 
		at: aBTRStateTransition 
		"ifAbsent: [self registerTransition: aBTRStateTransition]"