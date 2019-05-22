initialization
updateStartArrow

	self stateMachineModel startState
		ifNotNil: [:start | (self morphForState: start) addStartArrow: self startArrow]
		ifNil: [self startArrow hide].