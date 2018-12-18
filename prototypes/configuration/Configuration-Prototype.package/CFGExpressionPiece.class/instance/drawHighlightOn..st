as yet unclassified
drawHighlightOn: aCanvas

	self
		drawHighlightIn: self leftElement bounds On: aCanvas;
		drawHighlightIn: self rightElement bounds On: aCanvas.