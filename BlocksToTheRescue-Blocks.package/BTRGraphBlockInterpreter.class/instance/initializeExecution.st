initialize-release
initializeExecution

	self activeEdges: IdentityDictionary new.
	self graph edges do: [:each | self activeEdges at: each put: LinkedList new].
	self results: IdentityDictionary new.
	self graph endNodes do: [:each | self results at: each put: {}]