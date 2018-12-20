building
initializeContainers

	self
		inputFlowContainer: (self buildContainerFor: #flowIn);
		outputFlowContainer: (self buildContainerFor: #flowOut);
		inputDataContainer: (self buildContainerFor: #dataIn);
		outputDataContainer: (self buildContainerFor: #dataOut).