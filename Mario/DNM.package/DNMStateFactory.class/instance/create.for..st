instance-creation
create: aStateType for: anObject
	|requestedState|
	requestedState := (statesBySymbol at: aStateType
		ifAbsent: [[self error: 'Requested StateType does not exist!']]) value.
	requestedState representedObject: anObject.
	^requestedState