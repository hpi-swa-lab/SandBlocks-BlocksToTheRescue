placement
removeRow: aNumber

	0 to: self gridWidth - 1 do: [ :x |
		self gridAt: x @ aNumber putUnchecked: nil].
	self changed.