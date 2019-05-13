instance creation
for: aBTRStateMachineModel

	^ self new
		stateMachineModel: aBTRStateMachineModel;
		in: [:me | aBTRStateMachineModel addDependent: me];
		yourself