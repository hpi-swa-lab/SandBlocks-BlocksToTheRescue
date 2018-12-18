submorphs-add/remove
removedMorph: aMorph

	aMorph = self followingConnector
		ifTrue: [self followingConnector: nil].