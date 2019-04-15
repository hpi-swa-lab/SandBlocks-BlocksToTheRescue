updating
update

	self value
		ifNil: [self initializeTable]
		ifNotNil: [self updateTable].