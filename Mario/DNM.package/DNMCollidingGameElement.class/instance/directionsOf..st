collision
directionsOf: aGameElement
	"Returns the directionOf aColliingGameElement relative to me as a collection of symbols. If an object is on the upper left side, then the result would be {#left . #top}. Possible answers contain: #left #right #top #down  "
	|directionsCollection|
	directionsCollection := OrderedCollection new.
	(aGameElement isLeftOf: self) ifTrue: [directionsCollection add: #left].
	(aGameElement isRightOf: self) ifTrue: [directionsCollection add: #right].
	(aGameElement isAbove: self) ifTrue: [directionsCollection add: #top].
	(aGameElement isBelow: self) ifTrue: [directionsCollection add: #down].
	^directionsCollection