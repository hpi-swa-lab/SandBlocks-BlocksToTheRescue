movement
canMoveDownIn: aTPlayfield

	self blockPositions do: [:each |
		| newPosition |
		newPosition := 0 @ 1 + each + self gridPosition.
		((0@0 rect: aTPlayfield gridSize - (1 @ 1)) containsPoint: newPosition)
			ifFalse: [^ false].
		(aTPlayfield gridAt: newPosition) ifNotNil: [^ false]].
	^ true