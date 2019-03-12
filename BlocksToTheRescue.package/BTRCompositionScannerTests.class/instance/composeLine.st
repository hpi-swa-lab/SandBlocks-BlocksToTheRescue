testing
composeLine

	^ self scanner 
		composeFrom: 1 
		inRectangle:  (0 @ 0 corner: 9000 @ 9000)
		firstLine: false 
		leftSide: true 
		rightSide: true