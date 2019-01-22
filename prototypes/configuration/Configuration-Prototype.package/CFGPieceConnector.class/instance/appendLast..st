linked list
appendLast: aMorph
	
	self isTerminated
		ifTrue: [self followingConnector: aMorph]
		ifFalse: [self followingConnector appendLast: aMorph].