execution
valueInContext: aContext

	self outerContext: aContext.
	self initializeExecution.
	self execute.
	^ self graph endNodes gather: [:each | self results at: each]