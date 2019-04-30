build states
populateStatesSet

	self states onIndexesDo: [:i :j | | symbol |
		"self haltIf: [i = 8]."
		symbol := self nextSymbolFrom: (self states set: i index: j).
		self handleSymbol: symbol at: i and: j].