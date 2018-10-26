converting
relativePositionFor: aPoint

	^ ((aPoint
		translateBy: self position negated)
		scaleBy: self extent reciprocal)
		adhereTo: (0@0 extent: 1@1)