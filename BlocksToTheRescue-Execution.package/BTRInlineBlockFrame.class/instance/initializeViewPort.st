as yet unclassified
initializeViewPort

	self viewPort: BTRMorphEditorMorph new.
	self viewPort layoutPolicy: CenteredLayout new.
	self 
		addMorph: self viewPort
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0 @ self barHeight corner: 1 @ self barHeight)).