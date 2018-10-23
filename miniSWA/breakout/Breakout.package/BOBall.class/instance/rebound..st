entity-ops
rebound: direction

	self speedVector: (direction caseOf: {
		[#horizontal] -> [self speedVector x @ self speedVector y negated].
		[#vertical] -> [self speedVector x negated @ self speedVector y]}).