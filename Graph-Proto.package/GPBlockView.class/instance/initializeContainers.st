building
initializeContainers

	self
		inputFlowContainer: (Morph new beTransparent layoutPolicy: TableLayout new; layoutFrame: (GPLayoutFrame new gridPositionName: #flowIn));
		outputFlowContainer: (Morph new beTransparent layoutPolicy: TableLayout new; layoutFrame: (GPLayoutFrame new gridPositionName: #flowOut));
		inputDataContainer: (Morph new beTransparent layoutPolicy: TableLayout new; layoutFrame: (GPLayoutFrame new gridPositionName: #dataIn));
		outputDataContainer: (Morph new beTransparent layoutPolicy: TableLayout new; layoutFrame: (GPLayoutFrame new gridPositionName: #dataOut)).