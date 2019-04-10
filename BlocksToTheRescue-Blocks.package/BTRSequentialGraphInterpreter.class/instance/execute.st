execution
execute

	[self hasTerminated] whileFalse: 
		[self activeNodes do: [:each | self executeNode: each].
		self calculateActiveNodes.
		self remainingNodes removeAll: self activeNodes].