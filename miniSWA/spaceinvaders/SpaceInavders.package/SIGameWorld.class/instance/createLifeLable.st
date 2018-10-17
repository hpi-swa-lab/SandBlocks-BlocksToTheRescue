as yet unclassified
createLifeLable
	
	| lifeLable |
	
	lifeLable := 'Lifes: 3' asMorph.
	lifeLable
		fontName: 'Darkmap DejuVu Sans' size: 60;
		color: Color green.
	self addMorph: lifeLable.
	self lifeLable: lifeLable.
	self lifeLable position: (self topRight - (self lifeLable extent x @ 0)).
	