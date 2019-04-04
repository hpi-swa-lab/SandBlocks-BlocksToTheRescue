accessing
newOfType: aType above: aPositionOrLevelElement
	"Accepts Points, LevelElement (and anything else that has a asPoint method) as argument."
	|newInstance position|
	position := aPositionOrLevelElement asPoint.
	newInstance := (self newOfType: aType).
	^newInstance 
		position: (position - (0 @ (newInstance height)));
		yourself
	
