execution
pollArguments: aNode

	^ (self graph incoming: aNode) withIndexCollect:  
		[:edge :index | (edge valueName ifNil: [index threeDigitName]) -> (self pollEdge: edge)]