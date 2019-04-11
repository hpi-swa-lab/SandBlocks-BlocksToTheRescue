testing
isTransitionUnlocked: aBTRStateTransition

	^ self isUnlocked
		and: [self currentState isUnlocked]
		and: [aBTRStateTransition isUnlocked]