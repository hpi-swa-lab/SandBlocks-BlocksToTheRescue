execution
executeNode: aNode

	"This is needed for conditional returns (self graph incoming: aNode) do: [:each | self runningNodes remove: each key ifAbsent: []]."
	self runningNodes add: aNode.
	super executeNode: aNode.