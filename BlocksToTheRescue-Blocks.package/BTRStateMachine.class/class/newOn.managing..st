as yet unclassified
newOn: aBTRStateMachineModel managing: anObject

	^ self basicNew
		model: aBTRStateMachineModel;
		managedObject: anObject;
		initialize;
		yourself