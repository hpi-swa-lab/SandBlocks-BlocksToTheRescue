collision
isInFrontOfMe: aGameElement
	(aGameElement isRightOf: self) ifTrue: [^self isMovingRight].
	(aGameElement isLeftOf: self) ifTrue: [^self isMovingLeft].
	^false