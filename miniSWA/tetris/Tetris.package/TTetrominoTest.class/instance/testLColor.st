color tests
testLColor

	| tetromino |
	tetromino := TTetromino L.
	self assert: (tetromino blocks allSatisfy: [:each | each color = Color magenta]).