build
normie

	| blockModel |
	blockModel := GPBlockModel new.
	blockModel 
		addInputFlow;
		addOutputFlow;
		addInputData .
	^ (GPBlockView for: blockModel)