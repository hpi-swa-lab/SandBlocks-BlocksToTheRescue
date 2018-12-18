building
addContainers

	self
		addMorph: self inputFlowContainer;
		addMorph: self outputFlowContainer;
		addMorph: self inputDataContainer;
		addMorph: self outputDataContainer.