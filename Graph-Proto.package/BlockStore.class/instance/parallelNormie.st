build
parallelNormie

	| blockModel |
	blockModel := ParallelBlockModel new.
	blockModel 
		addInputFlow;
		addPerl.
	^ (ParallelBlockView for: blockModel)