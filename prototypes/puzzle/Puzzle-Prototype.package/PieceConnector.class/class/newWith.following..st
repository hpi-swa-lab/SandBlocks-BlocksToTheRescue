as yet unclassified
newWith: aMorph following: anotherMorph
	
	| position |
	position := aMorph topLeft - (0 @ aMorph height).
	^ self new
		puzzlePiece: aMorph; 
		followingPiece: anotherMorph;
		position: position;
		yourself