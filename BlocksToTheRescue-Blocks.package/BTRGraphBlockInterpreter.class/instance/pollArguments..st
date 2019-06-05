execution
pollArguments: aNode

	^ (self graph incoming: aNode) collect: 
		[:edge | edge valueName -> (self activeEdges removeKey: edge)]