as yet unclassified
valueInContext: aContext

	self outerContext: aContext.
	self initializeNodes.
	[self hasTerminated] whileFalse: 
		[self activeNodes do: [:each | self executeNode: each].
		self calculateActiveNodes.
		self remainingNodes: (self remainingNodes difference: self activeNodes)].
	^ self graph endNodes gather: [:each | self results at: each]