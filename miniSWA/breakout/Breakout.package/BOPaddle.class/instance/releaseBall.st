entity-ops
releaseBall

	self ballEntity ifNotNil: [:ball |
		ball startTicking.
		self removeDependent: ball.
		self ballEntity: nil].