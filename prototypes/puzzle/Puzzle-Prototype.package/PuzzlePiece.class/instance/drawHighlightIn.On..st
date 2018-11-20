drawing
drawHighlightIn: aRectangle On: aCanvas

	(aRectangle containsPoint: ActiveHand position)
		ifTrue: [aCanvas fillRectangle: aRectangle color: Color white].
	
	
	