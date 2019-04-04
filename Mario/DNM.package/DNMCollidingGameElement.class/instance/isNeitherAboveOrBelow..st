collision
isNeitherAboveOrBelow: aGameElement
	^((self isAbove: aGameElement) or: (self isBelow: aGameElement)) not