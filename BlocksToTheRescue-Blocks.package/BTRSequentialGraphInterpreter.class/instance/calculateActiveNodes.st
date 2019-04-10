execution
calculateActiveNodes

	self activeNodes: (self remainingNodes select: 
		[:each | self activeEdges keys includesAllOf: (self graph incoming: each)]).