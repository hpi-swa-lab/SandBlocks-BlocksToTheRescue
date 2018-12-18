as yet unclassified
newWith: aPiece following: aConnector
	
	^ self new
		puzzlePiece: aPiece; 
		followingConnector: aConnector;
		fullBounds;
		yourself