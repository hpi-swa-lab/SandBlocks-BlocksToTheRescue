instance creation
newFor: aBTRStateMachineModel

	^ self new
		stateMachineModel: aBTRStateMachineModel;
		in: [:me | aBTRStateMachineModel addDependent: me];
		yourself