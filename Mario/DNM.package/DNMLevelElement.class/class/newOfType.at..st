accessing
newOfType: aType at: aPositionOrLevelElement
	|position|
	position := aPositionOrLevelElement asPoint.
	^(self newOfType: aType)
		position: position;
		yourself
