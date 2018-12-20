build
exampleBlock

	| blockModel |
	blockModel := GPBlockModel new.
	blockModel 
		addInputFlow;
		addOutputFlow;
		addOutputFlow;
		addInputData;
		addOutputData .
	^ (GPBlockView for: blockModel)