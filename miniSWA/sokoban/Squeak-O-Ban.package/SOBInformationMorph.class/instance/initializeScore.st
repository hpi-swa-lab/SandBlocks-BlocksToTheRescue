initialize-release
initializeScore

	self 
		score: (StringMorph new emphasis: 2);
		addMorph: ((StringMorph contents: 'Score') emphasis: 1);
		addMorph: self score.