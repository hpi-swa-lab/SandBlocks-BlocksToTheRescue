drawing
drawHighlightIn: aRectangle On: aCanvas
	"Rounding the Rectangle is freaking important! Canvas is too stupid."
	(aRectangle containsPoint: ActiveHand position)
			ifTrue: [aCanvas fillRectangle: aRectangle rounded color: Color white].