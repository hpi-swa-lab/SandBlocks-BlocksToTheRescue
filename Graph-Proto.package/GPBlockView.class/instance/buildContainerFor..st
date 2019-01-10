building
buildContainerFor: aSymbol

	^ Morph new 
		beTransparent;
		layoutPolicy: TableLayout new; 
		layoutFrame: (GPLayoutFrame new gridPositionName: aSymbol)