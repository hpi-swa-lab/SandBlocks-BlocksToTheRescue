testing
isWithin: tolerance toVisibleSection: anObject
	|translatedBounds|
	translatedBounds := self translatedBounds.
	^(anObject right >= (translatedBounds left - tolerance)) 
		and: [(anObject left <= (translatedBounds right + tolerance))]