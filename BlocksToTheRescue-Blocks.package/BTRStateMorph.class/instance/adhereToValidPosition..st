geometry
adhereToValidPosition: aPosition

	^ self owner 
		ifNotNil: [:o |
			aPosition adhereTo: (o position extent: (self shrinkToGrid: o extent - self extent))]
		ifNil: [aPosition].