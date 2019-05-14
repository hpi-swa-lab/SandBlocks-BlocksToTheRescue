geometry
expandToGrid: aPoint

	^ self stateMachineMorph
		ifNotNil: [:smm | smm expandToGrid: aPoint]
		ifNil: [aPoint]