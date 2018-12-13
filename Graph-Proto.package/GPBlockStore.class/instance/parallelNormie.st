build
parallelNormie

	| blockModel |
	blockModel := GPParallelBlockModel new.
	blockModel 
		addInputFlow;
		addPerl.
	^ (GPParallelBlockView for: blockModel)