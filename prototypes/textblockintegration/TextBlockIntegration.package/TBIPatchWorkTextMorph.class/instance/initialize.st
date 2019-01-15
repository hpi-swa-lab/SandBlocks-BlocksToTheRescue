as yet unclassified
initialize 

	super initialize.
	self patches: OrderedCollection new.
	self initializeBackground.
	self scroller addMorph: self background.
	self 
		vScrollBarPolicy: #always;
		hScrollBarPolicy: #always.