entity-ops
rebound: direction

	Transcript showln: 'rebound at: ', direction.
	self speedVector: (direction caseOf: {
		[#x] -> [self speedVector x @ self speedVector y negated].
		[#y] -> [self speedVector x negated @ self speedVector y]}).