initialization
initializeRows

	rows := OrderedCollection new.
	1 to: self matrix rowCount do: [:index | 
		rows add: (self initializeRow: index).
		self table addMorphBack: (rows at: index)].