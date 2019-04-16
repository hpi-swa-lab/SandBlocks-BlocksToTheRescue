copying
notifyCells

	self rows do: [:row |
		row do: [:cell | cell tableModel: self]].
	