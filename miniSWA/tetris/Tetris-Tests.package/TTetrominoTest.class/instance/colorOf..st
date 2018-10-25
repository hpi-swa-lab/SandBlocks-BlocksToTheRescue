color tests
colorOf: aTTetromino

	| colors |
	colors := aTTetromino blocks collect: [:each | each color].
	colors := colors asSet.
	self assert: 1 equals: colors size.
	colors do: [:each | ^ each].