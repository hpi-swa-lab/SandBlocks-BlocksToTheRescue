instance creation
for: anAssociation on: aBTRStateMachineMorph

	^ self basicNew
		stateMachineMorph: aBTRStateMachineMorph;
		initializeWith: anAssociation;
		yourself