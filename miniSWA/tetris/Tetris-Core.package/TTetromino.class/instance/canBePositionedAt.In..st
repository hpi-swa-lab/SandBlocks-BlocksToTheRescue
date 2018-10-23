placement
canBePositionedAt: aPoint In: aTPlayfield

	self blockPositions do: [:each |
		| newPosition |
		newPosition := aPoint + each.
		((0@0 rect: aTPlayfield gridSize) containsPoint: newPosition)
			ifFalse: [^ false].
		(aTPlayfield gridAt: newPosition)
			ifNotNil: [^ false]].
	^ true