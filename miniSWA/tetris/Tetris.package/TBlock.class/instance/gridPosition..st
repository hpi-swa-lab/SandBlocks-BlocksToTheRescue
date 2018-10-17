accessing
gridPosition: aPoint

	self position: aPoint * (self class defaultWidth @ self class defaultWidth).
	gridPosition := aPoint