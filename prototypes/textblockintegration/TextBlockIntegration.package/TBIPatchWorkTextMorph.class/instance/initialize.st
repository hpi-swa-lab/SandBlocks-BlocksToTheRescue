as yet unclassified
initialize 

	super initialize.
	self initializeBackground.
	self scroller addMorph: self background.
	self 
		vScrollBarPolicy: #always;
		hScrollBarPolicy: #always.
	self extent: 200 @ 200.