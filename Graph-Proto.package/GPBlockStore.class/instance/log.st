build
log

	| blockModel |
	blockModel := GPBlockModel new.
	blockModel 
		addInputFlow;
		addOutputFlow;
		addInputData;
		action: [Transcript showln: (blockModel inputDatas at: 1) leftValue].
	^ (GPBlockView for: blockModel)