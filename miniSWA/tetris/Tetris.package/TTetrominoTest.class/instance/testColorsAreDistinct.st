color tests
testColorsAreDistinct

	| tetrominos colors |
	tetrominos := { self ITetromino.
		self JTetromino.
		self LTetromino.
		self OTetromino.
		self STetromino }.
	colors := (tetrominos collect: [:each | self colorOf: each]) asSet.
	self assert: (tetrominos size =  colors size).