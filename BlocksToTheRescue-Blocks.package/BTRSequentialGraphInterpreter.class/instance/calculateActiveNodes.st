execution
calculateActiveNodes

	self activeNodes: (self remainingNodes select: 
		[:each | (self graph incoming: each) allSatisfy: [:eachEdge | self isActive: eachEdge]]).