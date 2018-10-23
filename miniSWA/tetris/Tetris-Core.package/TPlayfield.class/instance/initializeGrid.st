initialize-release
initializeGrid

	self grid: (OrderedCollection ofSize: self class gridWidth).
	1 to: self grid size do: [:each |
		self grid at: each put: (OrderedCollection ofSize: self class gridHeight)]