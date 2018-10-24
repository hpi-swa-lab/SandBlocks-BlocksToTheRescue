occupant
free

	self occupant isBox ifTrue: [self changed: #unstored with: self].
	super free.