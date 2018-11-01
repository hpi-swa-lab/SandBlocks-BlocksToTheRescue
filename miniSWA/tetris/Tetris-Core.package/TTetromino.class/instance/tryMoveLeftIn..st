movement
tryMoveLeftIn: aTPlayField

	(self canBePositionedAt: -1 @ 0 + self gridPosition In: aTPlayField)
		ifTrue: [self gridPosition: -1 @ 0 + self gridPosition].