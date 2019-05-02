*BlocksToTheRescue-Core
copyAsLayer

	^ Morph new
		color: Color transparent;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutFrame: (LayoutFrame fractions: 1 asPoint asRectangle);
		bounds: self bounds;
		yourself