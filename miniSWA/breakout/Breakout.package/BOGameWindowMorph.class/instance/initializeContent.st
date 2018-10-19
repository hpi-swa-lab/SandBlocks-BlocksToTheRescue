initialization
initializeContent

	self addMorph: (PluggablePanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0;
		borderWidth: 0;
		color: self defaultColor;
		addMorph: self gameField fullFrame: self fullExtentLayout;
		yourself) fullFrame: self fullExtentLayout.