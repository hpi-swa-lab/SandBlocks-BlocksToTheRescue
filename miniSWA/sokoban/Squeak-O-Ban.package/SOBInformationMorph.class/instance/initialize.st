as yet unclassified
initialize 

	super initialize.
	self 
		title: (StringMorph new emphasis: 1);
		score: (StringMorph new emphasis: 2);
		moves: (StringMorph new emphasis: 2);
		layoutPolicy: TableLayout new;
		listDirection: #bottomToTop;
	  	wrapCentering: #justified;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addMorph: self title;
		addMorph: ((StringMorph contents: 'Score') emphasis: 1);
		addMorph: self score;
		addMorph: ((StringMorph contents: 'Moves') emphasis: 1);
		addMorph: self moves;
		color: Color transparent.
	self fullBounds.
	self bounds: self submorphBounds.
		