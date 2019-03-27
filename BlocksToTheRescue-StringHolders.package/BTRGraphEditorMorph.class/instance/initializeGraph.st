initialization
initializeGraph

	self removeAllMorphs.
	self graph nodes do: [:each | self addMorph: (BTRGraphNodeMorph on: each)].