execution
executeNode: aNode

	| arguments results |
	arguments := self pollArguments: aNode.
	results := aNode valuesWith: arguments in: self.
	self pushResults: results of: aNode.