as yet unclassified
attachFollowing: aMorph
	
	| appendix |
	appendix := self followingPiece.
	self followingPiece: aMorph.
	aMorph appendLast: appendix.
