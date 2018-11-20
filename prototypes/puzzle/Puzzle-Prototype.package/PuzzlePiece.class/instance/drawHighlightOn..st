drawing
drawHighlightOn: aCanvas

	| lowerBounds upperBounds |
	lowerBounds := self bounds.
	lowerBounds := lowerBounds top: self bounds height / 2 + lowerBounds top.

	upperBounds := self bounds.
	upperBounds := upperBounds bottom: upperBounds bottom - (self bounds height / 2).
			
	self
		drawHighlightIn: lowerBounds On: aCanvas;
		drawHighlightIn: upperBounds On: aCanvas.