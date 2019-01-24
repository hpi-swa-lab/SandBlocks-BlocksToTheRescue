initialization
initialize 

	super initialize.
	self initializeBackground.
	self lines: OrderedCollection new.
	self scroller addMorph: self background.
	self 
		vScrollBarPolicy: #always;
		hScrollBarPolicy: #always.
	self extent: 200 @ 200.
	self addEventCaptureFilter: self owner.
	
	self currentLineNumber: 0.
	self addLine.
	self addPatch: TBIPatch newText inLine: self currentLineNumber 