occupant
occupyBy: anOccupant

	super occupyBy: anOccupant.
	anOccupant isBox ifTrue: [self changed: #stored with: self].