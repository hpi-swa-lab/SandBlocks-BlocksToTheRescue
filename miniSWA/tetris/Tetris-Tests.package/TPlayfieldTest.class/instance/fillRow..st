placement tests
fillRow: aNumber

	0 to: self playfield gridWidth - 1 do: [ :x |
		self playfield gridAt: x @ aNumber put: TBlock new].