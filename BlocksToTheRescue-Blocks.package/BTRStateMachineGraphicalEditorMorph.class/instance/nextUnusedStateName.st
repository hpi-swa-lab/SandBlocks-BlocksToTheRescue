defaults
nextUnusedStateName

	^ ((self stateMachineModel states
		collect: [:state | state name]
		thenSelect: [:name | name beginsWith: self defaultStateName])
		ifEmpty: [self defaultStateName]
		ifNotEmpty: [self defaultStateName, ' 2'])