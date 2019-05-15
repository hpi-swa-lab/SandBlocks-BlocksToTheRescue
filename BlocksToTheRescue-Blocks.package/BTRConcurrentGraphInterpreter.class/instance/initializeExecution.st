initialize-release
initializeExecution

	super initializeExecution.
	self runningNodes: OrderedCollection new.
	self terminator: Semaphore new.
	self semaphores: (Dictionary newFrom: (self graph edges collect: [:each | each -> Semaphore new])).
	self semaphores addAll: (self graph endNodes collect: [:each | each -> Semaphore new]).