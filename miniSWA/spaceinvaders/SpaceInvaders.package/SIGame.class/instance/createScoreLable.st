as yet unclassified
createScoreLable
	
	| scoreLable |
	
	scoreLable := ('Score: ', self gameState startScore) asMorph.
	scoreLable
		fontName: self defaultFontName size: self defaultFontSize;
		color: Color blue.
	self addMorph: scoreLable.
	self scoreLable: scoreLable.
	self scoreLable position: (0 @ 0). 
	