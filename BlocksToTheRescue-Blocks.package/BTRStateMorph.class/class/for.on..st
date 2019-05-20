instance creation
for: aBTRState on: aBTRStateMachineMorph

	^ self basicNew
		stateMachineMorph: aBTRStateMachineMorph;
		state: aBTRState;
		"in: [:instance | aBTRState addDependent: instance];"
		initialize;
		yourself