initialize-release
initializeExecution

	self activeEdges: Dictionary new.
	self results: Dictionary new.
	self graph endNodes do: [:each | self results at: each put: {}]