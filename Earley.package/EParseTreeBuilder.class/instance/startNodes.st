as yet unclassified
startNodes

	^ (self nodesList at: 1) 
		select: [:each | each end = self source size and: [self grammar isStartNode: each]]