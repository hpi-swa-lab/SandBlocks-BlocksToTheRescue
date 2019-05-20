*BlocksToTheRescue-Core
storeInstVarNamed: aString on: aStream

	aString caseOf: {
		['submorphs'] -> [self storeSubmorphsOn: aStream]				
	} otherwise: [super storeInstVarNamed: aString on: aStream].