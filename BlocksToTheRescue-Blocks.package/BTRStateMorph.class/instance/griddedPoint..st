geometry
griddedPoint: aPoint

	^ self stateMachineMorph
		ifNotNil: [:smm | smm griddedPoint: aPoint]
		ifNil: [aPoint]