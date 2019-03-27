as yet unclassified
valueWithArguments: anArray

	self initializeNodes.
	[self activeNodes isEmpty] whileFalse: 
		[self activeNodes copy do: [:each | | arguments results |
			arguments := (self graph incoming: each) collect: [:edge | self activeEdges removeKey: edge].
			results := each valuesWith: arguments in: self.
			(self results includesKey: each)
				ifFalse: [(self graph outgoing: each) with: results do: [:edge :value | self activeEdges at: edge put: value]]
				ifTrue: [self results at: each put: results]].
		self activeNodes: (self remainingNodes select: [:each | self activeEdges keys includesAllOf: (self graph incoming: each)]).
		self remainingNodes: (self remainingNodes difference: self activeNodes)].
	^ self graph endNodes gather: [:each | self results at: each]