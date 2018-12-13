linked list
attachFollowing: aMorph
	
	| appendix |
	appendix := self followingConnector.
	self followingConnector: aMorph.
	aMorph appendLast: appendix.
