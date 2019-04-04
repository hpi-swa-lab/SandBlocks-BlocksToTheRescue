testing
isMarioDead
	^(self mario position y > self level lowerBoundary) or: [(self mario isAlive) not]
		