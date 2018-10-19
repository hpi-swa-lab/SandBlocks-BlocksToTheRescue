accessing
bounds: newBounds
	| extent |
	extent := (newBounds width min: newBounds height) asPoint.
	super bounds: (Rectangle origin: newBounds origin extent: extent).
	
	"Why do I have to update this deferred on openInWorld?"
	Project current addDeferredUIMessage: [self gameField updateEntityBounds].