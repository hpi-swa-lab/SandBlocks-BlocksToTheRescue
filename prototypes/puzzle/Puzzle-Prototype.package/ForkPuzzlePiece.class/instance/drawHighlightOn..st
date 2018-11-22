as yet unclassified
drawHighlightOn: aCanvas
	
	super drawHighlightOn: aCanvas. 
	self
		drawHighlightIn: self middleLeftBounds On: aCanvas;
		drawHighlightIn: self middleRightBounds On: aCanvas.