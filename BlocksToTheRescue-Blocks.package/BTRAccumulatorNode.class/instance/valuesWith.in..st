as yet unclassified
valuesWith: arguments in: aContext

	arguments do: [:each | self accumulate: each value at: each key].
	self shouldReturn
		ifTrue: [self return]
		ifFalse: [self rearm].