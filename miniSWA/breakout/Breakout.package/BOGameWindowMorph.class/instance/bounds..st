accessing
bounds: newBounds
	| extent |
	extent := (newBounds width min: newBounds height) asPoint.
	super bounds: (Rectangle origin: newBounds origin extent: extent).