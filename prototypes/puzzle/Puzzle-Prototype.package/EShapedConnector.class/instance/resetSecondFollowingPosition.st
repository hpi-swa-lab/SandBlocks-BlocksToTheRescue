as yet unclassified
resetSecondFollowingPosition

	self secondFollowingPiece 
		ifNotNil: [:second | second topLeft: self followingPiece bottomLeft].