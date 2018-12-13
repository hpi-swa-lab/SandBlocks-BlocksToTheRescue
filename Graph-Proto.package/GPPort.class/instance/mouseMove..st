event handling
mouseMove: evt

	self dragLine setVertices: {self center . evt position}.
	self handle ifNotNil: [self handle center: evt position].