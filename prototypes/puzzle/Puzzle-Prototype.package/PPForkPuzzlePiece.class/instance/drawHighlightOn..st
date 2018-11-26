drawing
drawHighlightOn: aCanvas
	
	super drawHighlightOn: aCanvas. 
	self
		drawHighlightIn: self middleLeftBounds On: aCanvas;
		drawHighlightIn: self middleRightBounds On: aCanvas.