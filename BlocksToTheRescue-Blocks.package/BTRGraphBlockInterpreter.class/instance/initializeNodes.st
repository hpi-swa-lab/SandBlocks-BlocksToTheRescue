as yet unclassified
initializeNodes

	self activeNodes: self graph startNodes.
	self activeEdges: Dictionary new.
	self remainingNodes: (self graph nodes difference: self activeNodes).
	self results: Dictionary new.
	self graph endNodes do: [:each | self results at: each put: {}]