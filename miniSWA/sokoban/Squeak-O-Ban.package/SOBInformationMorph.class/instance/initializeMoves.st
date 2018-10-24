initialize-release
initializeMoves

	self 
		moves: (StringMorph new emphasis: 2);
		addMorph: ((StringMorph contents: 'Moves') emphasis: 1);
		addMorph: self moves.