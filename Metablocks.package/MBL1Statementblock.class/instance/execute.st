as yet unclassified
execute

	| result |
	result := self block valueWithPossibleArgs: (self dataInputs collect: [:each | each poll]).
	self dataOutputs ifNotEmpty: [self dataOutputs first push: result].
	self flowOutputs do: [:each | each trigger].