instance creation
for: aBTRState on: aBTRStateMachineMorph

	^ self basicNew
		stateMachineMorph: aBTRStateMachineMorph;
		state: aBTRState;
		initialize;
		yourself