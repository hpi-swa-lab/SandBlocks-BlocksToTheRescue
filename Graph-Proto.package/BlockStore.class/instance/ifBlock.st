build
ifBlock

	| blockModel |
	blockModel := BlockModel new.
	blockModel 
		addInputFlow;
		addOutputFlow;
		addOutputFlow;
		addInputData;
		outputFlowDecider: [:outputFlows |
			 (blockModel inputDatas at: 1) leftValue
				ifTrue: [outputFlows at: 1]
				ifFalse: [outputFlows at: 2]].
	^ (BlockView for: blockModel)