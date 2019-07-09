execution
executeNode: aNode

	| arguments |
	arguments := self pollArguments: aNode.
	[aNode valuesWith: arguments in: self outerContext]
		on: BTRActivateEdge
		do: [:activation | self activate: aNode at: activation index with: activation value. activation resume]
		on: BTRRearmNode 
		do: [:rearm | self armNode: rearm node. rearm resume].
	"self pushResults: results of: aNode."