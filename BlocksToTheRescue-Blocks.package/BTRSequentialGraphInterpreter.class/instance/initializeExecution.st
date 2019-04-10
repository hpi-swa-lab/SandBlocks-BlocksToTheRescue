initialize-release
initializeExecution

	self activeNodes: self graph startNodes.
	self remainingNodes: (self graph nodes difference: self activeNodes).
	super initializeExecution.