visiting
visitForkPuzzlePiece: aCFGOptionPuzzlePiece

	| oldOptions key result |
	oldOptions := self options copy.
	key := self visit: aCFGOptionPuzzlePiece branches leftElement.
	result := self visit: aCFGOptionPuzzlePiece branches rightElement.
	self options: oldOptions.
	^ self options 
		ifEmpty: [key -> result]
		ifNotEmpty: [result]