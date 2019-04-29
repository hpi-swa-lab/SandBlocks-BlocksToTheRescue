build states
populateStatesSet

	self states onIndexesDo: [:i :j | | symbol |
		symbol := self nextSymbolFrom: (self states set: i index: j).
		self handleSymbol: symbol at: i and: j].