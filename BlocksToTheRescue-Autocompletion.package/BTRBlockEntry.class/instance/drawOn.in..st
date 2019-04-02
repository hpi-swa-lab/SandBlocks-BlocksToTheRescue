drawing
drawOn: aCanvas in: aRectangle

	| icon |
	icon := contents previewIcon.
	aCanvas translucentImage: icon at: aRectangle topLeft + (1 @ 2).
	super drawOn: aCanvas in: (aRectangle left: aRectangle left + icon width + 2).