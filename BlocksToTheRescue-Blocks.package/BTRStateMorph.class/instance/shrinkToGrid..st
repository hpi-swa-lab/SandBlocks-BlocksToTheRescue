geometry
shrinkToGrid: aPoint

	^ self stateMachineMorph
		ifNotNil: [:smm | smm shrinkToGrid: aPoint]
		ifNil: [aPoint]