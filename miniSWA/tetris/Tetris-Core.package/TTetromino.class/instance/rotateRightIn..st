rotation
rotateRightIn: aTPlayField

	self rotateRightUnchecked.
	(self canBePlacedInto: aTPlayField)
		ifFalse: [self rotateLeftUnchecked]

	