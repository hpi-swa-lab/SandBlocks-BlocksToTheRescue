as yet unclassified
createLifeLable
	
	| lifeLable |
	
	lifeLable := ('Lifes: ', self startLifes) asMorph.
	lifeLable
		fontName: self defaultFontName size: self defaultFontSize;
		color: Color green.
	self addMorph: lifeLable.
	self lifeLable: lifeLable.
	self lifeLable position: (self topRight - (self lifeLable extent x @ 0)).
	