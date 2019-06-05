as yet unclassified
fixEdgeAssociations

	self nodes do: [:eachNode |
		(self incoming: eachNode) withIndexDo: [:eachEdge :index | 
			(eachEdge isKindOf: BTRGraphEdge) ifFalse: 
				[eachEdge becomeForward: 
					(BTRGraphEdge
						key: eachEdge key 
						value: eachEdge value
						valueName: index threeDigitName)]]]