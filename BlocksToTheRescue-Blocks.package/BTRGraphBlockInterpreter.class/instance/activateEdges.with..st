execution
activateEdges: aCollectionOfEdges with: aCollectionOfValues

	aCollectionOfEdges with: aCollectionOfValues do: 
		[:edge :value | self activateEdge: edge with: value].

	