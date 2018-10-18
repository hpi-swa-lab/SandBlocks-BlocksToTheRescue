initialization
initializeContent

	self addMorph: (PluggablePanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: self defaultColor;
		addMorph: self gameField fullFrame: self fullExtentLayout;
		yourself) fullFrame: self fullExtentLayout.