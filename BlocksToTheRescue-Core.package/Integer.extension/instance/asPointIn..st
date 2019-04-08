*BlocksToTheRescue-Core
asPointIn: anExtent

	anExtent isIntegerPoint
		ifFalse: [^ self error: 'requires integer point as extent'].
	(self > 0 and: [self <= anExtent area])
		ifFalse: [^ self error: 'point outside of extent'].

	^ ((self - 1 \\ anExtent x) @ (self - 1 // anExtent x)) + 1