collision
testIf: bounds afterBeingTranslatedBy: aVector intersectWith: otherBounds
	|translatedBounds|
	translatedBounds := bounds copy translateBy: aVector.
	^(translatedBounds intersects: otherBounds)
