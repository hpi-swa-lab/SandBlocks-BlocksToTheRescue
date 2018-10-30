placement
removeRow: aNumber

	0 to: self gridWidth - 1 do: [ :x |
		self gridAt: x @ aNumber put: nil].
	aNumber to: 1 by: -1 do: [ :y |
		0 to: self gridWidth - 1 do: [ :x |
			self gridAt: x @ y put: (self gridAt: x @ (y - 1)).
			self gridAt: x @ (y - 1) put: nil]].