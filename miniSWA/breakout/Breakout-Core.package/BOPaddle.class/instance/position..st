accessing
position: aRelativePosition

	super position: aRelativePosition.
	self ballEntity ifNotNil: [:ball | ball updateFromPaddle: self].