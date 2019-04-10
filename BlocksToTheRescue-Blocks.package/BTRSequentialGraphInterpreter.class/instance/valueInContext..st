execution
valueInContext: aContext

	self outerContext: aContext.
	self initializeExecution.
	[self hasTerminated] whileFalse: 
		[self activeNodes do: [:each | self executeNode: each].
		self calculateActiveNodes.
		self remainingNodes removeAll: self activeNodes].
	^ self graph endNodes gather: [:each | self results at: each]