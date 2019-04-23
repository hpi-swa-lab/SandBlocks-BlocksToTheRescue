execution
executeNode: aNode

	| arguments results |
	arguments := self pollArguments: aNode.
	results := aNode valuesWith: arguments in: self outerContext.
	self pushResults: results of: aNode.