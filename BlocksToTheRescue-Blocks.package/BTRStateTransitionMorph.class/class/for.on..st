instance creation
for: aBTRStateTransition on: aBTRStateMachineMorph

	^ self basicNew
		stateMachineMorph: aBTRStateMachineMorph;
		initializeWith: aBTRStateTransition;
		yourself