placement
placeInto: aTPlayfield

	self blocks do: [:each|
		aTPlayfield gridAt: each gridPosition + self gridPosition put: each].
	aTPlayfield removeFullRows.
	self blocks: OrderedCollection new.
	self changed.