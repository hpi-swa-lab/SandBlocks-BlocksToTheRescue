accessing
startStateName
	^ startStateName ifNil: [self states
		ifNotEmpty: [self states keys anyOne]
		ifEmpty: [nil]]