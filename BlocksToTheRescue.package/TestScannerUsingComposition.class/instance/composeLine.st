running
composeLine

	| compositionScanner |
	compositionScanner := CompositionScanner new
		text: self text textStyle: self textStyle;
		yourself.
	self line: (compositionScanner 
		composeFrom: 1 
		inRectangle:  (0 @ 0 corner: 9000 @ 9000)
		firstLine: false 
		leftSide: true 
		rightSide: true)