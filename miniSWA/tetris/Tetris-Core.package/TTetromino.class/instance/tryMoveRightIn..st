movement
tryMoveRightIn: aTPlayField

	(self canBePositionedAt: 1 @ 0 + self gridPosition In: aTPlayField)
		ifTrue: [self gridPosition: 1 @ 0  + self gridPosition].