testing
gameSpeedFactor

	^ self model 
		ifNil: [1] 
		ifNotNil: [1 / ((self model gameSpeed + 1.5) log: 10) + 0.25]