placement tests
testCompleteRowDisappears

	self fillRow: self playfield gridHeight - 1.
	self playfield removeFullRows.
	0 to: self playfield gridWidth - 1 do: [ :x |
		self assert: (self playfield gridAt: x @ (self playfield gridHeight - 1)) isNil ].