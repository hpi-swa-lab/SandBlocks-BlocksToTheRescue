accessing
generateCodeFor: aPieceConnector

	self code: (self visit: aPieceConnector).
	self code: (self format: self code).
	 ^ self code