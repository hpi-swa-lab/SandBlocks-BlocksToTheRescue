instance creation
for: anAssociation on: aBTRStateMachineMorph

	^ self basicNew
		stateMachineMorph: aBTRStateMachineMorph;
		initializeWith: anAssociation;
		in: [:instance | instance transition addDependent: instance];
		yourself