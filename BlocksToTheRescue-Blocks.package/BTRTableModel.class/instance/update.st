updating
update

	1 halt.
	self value
		ifNil: [self initializeTable]
		ifNotNil: [self updateTable].