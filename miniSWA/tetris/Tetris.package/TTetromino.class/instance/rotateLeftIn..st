rotation
rotateLeftIn: aTPlayField

	self rotateLeftUnchecked.
	(self canBePlacedInto: aTPlayField)
		ifFalse: [self rotateRightUnchecked]