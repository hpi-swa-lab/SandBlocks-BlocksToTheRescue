build
normie

	| blockModel |
	blockModel := BlockModel new.
	blockModel 
		addInputFlow;
		addOutputFlow;
		addInputData .
	^ (BlockView for: blockModel)