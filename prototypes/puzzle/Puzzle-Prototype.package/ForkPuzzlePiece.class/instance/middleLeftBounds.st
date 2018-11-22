as yet unclassified
middleLeftBounds
	
	| middleLeftBounds |
	middleLeftBounds := self bounds.
	middleLeftBounds := middleLeftBounds top: self upperBounds bottom.
	middleLeftBounds := middleLeftBounds bottom: self lowerBounds top.
	middleLeftBounds := middleLeftBounds right: self bounds width / 2 + self bounds left.
	
	^ middleLeftBounds