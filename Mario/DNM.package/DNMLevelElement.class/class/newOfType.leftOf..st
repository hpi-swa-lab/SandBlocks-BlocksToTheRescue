accessing
newOfType: aType leftOf: aPositionOrLevelElement 
	|newInstance position|
	position := aPositionOrLevelElement asPoint.
	newInstance := self newOfType: aType.
	^newInstance 
		position: (position - ((newInstance width) @ 0))
		yourself
	
