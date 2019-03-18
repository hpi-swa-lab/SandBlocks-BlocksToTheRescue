as yet unclassified
value

	^ self block valueWithArguments: (self selectors collect: [:each | self valueAtSelector: each] as: Array)