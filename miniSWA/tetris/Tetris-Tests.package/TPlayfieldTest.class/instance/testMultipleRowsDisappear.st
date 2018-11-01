placement tests
testMultipleRowsDisappear

	self playfield gridAt: 0 @ (self playfield gridHeight - 3) put: TBlock new.
	self fillRow: self playfield gridHeight - 1.
	self fillRow: self playfield gridHeight - 2.
	self playfield removeFullRows.
	
	self assert: (self playfield gridAt: 0 @ (self playfield gridHeight  - 1)) isNil not.
	1 to: self playfield gridWidth - 1 do: [ :x |
		self assert: (self playfield gridAt: x @ (self playfield gridHeight - 1)) isNil ].