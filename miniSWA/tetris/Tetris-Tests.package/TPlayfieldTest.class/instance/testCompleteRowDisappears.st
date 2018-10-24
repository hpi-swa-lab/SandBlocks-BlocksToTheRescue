placement tests
testCompleteRowDisappears

	0 to: self playfield gridWidth - 1 do: [ :x |
		self playfield gridAt: x @ (self playfield gridHeight - 1) put: TBlock new].
	0 to: self playfield gridWidth - 1 do: [ :x |
		self assert: (self playfield gridAt: x @ (self playfield gridHeight - 1)) isNil ].