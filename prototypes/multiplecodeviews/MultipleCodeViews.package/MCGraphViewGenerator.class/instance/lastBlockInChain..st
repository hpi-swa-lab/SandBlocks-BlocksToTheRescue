as yet unclassified
lastBlockInChain: aGPBlockView

	|outputPort|
	outputPort := aGPBlockView blockModel outputFlows first.
	^ outputPort hasConnection
		ifTrue: [self lastBlockInChain: outputPort connectedPort block view]
		ifFalse: [aGPBlockView].