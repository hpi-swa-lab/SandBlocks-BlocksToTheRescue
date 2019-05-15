as yet unclassified
executeNode: aNode

	(self graph incoming: aNode) do: [:each | self runningNodes remove: each key ifAbsent: []].
	self runningNodes add: aNode.
	super executeNode: aNode.