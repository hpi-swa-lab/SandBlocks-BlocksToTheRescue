as yet unclassified
drawOn: aCanvas in: aRectangle

	| icon |
	icon := ToolIcons morph.
	aCanvas drawImage: icon at: aRectangle topLeft + (1 @ 2).
	super drawOn: aCanvas in: (aRectangle left: aRectangle left + icon width + 2).