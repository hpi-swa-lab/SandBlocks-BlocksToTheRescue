initialize-release
initializeExecution

	super initializeExecution.
	self semaphores: (self graph edges collect: [:each | each -> Semaphore new]) asDictionary.
	self semaphores addAll: (self graph endNodes collect: [:each | each -> Semaphore new]).