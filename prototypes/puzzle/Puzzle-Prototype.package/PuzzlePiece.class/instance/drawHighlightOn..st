drawing
drawHighlightOn: aCanvas

	self
		drawHighlightIn: self lowerBounds On: aCanvas;
		drawHighlightIn: self upperBounds On: aCanvas.