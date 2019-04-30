accessing
targetStateOf: transitionName

	^ self model stateNamed: (self transitionNamed: transitionName) targetStateName