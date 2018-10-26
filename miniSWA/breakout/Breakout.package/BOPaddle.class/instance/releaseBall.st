actions
releaseBall

	self ballEntity ifNotNil: [:ball |
		ball startTicking.
		self ballEntity: nil].