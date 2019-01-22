as yet unclassified
defaultOptionNew
	
	| connector |
	connector := self new
		puzzlePiece: CFGOptionPuzzlePiece create;
		fullBounds;
		yourself.
	connector puzzlePiece code: ''.
	connector puzzlePiece branches leftElement: (self defaultWithCode: 'my option').
	^ connector. 
		