as yet unclassified
createScoreLable
	
	| scoreLable |
	
	scoreLable := 'TEST' asMorph.
	scoreLable
		fontName: 'Darkmap DejuVu Sans' size: 60;
		color: Color blue.
	self addMorph: scoreLable.
	self scoreLable: scoreLable.
	self scoreLable position: (0 @ 0). 
	