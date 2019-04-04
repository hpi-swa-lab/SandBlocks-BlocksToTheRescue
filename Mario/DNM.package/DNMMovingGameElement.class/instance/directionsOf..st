collision
directionsOf: anObject
	"Returns the directionOf anObject relative to me as a collection of symbols. If an object is on the upper left side and I am facing left, then the result would be {#left . #top . #front}. Possible answers contain: #left #right #top #down #front  "
	|directionsCollection|
	directionsCollection := super directionsOf: anObject.
	(self isInFrontOfMe: anObject) ifTrue: [directionsCollection add: #front].
	^directionsCollection