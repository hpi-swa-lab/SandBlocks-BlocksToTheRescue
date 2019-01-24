as yet unclassified
composeOneLine
	| rectangles |
	rectangles := theContainer rectanglesAt: currentY height: defaultLineHeight.
	isFirstLine ifTrue: [currentY := currentY + 200].
	rectangles notEmpty 
		ifTrue: [(self composeAllRectangles: rectangles) ifNil: [^nil]]
		ifFalse: [currentY := currentY + defaultLineHeight].
	self checkIfReadyToSlide