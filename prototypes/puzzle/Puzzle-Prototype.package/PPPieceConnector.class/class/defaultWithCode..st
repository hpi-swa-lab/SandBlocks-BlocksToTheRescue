as yet unclassified
defaultWithCode: aString

	| connector |
	connector := self defaultNew.
	connector puzzlePiece code: aString.
	^ connector