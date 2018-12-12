as yet unclassified
initialize

	super initialize.
	self setVertices: ({-1.3@0 . -1@1 . 0@1.3 . 1@1 . 1.3@0 . 1@(-1) . 0@(-1.3) . -1@(-1)} collect: [:each | each * 30]).
	
	self conditionText: TextMorph new.
	self addMorph: self conditionText.
	self conditionText center: self center.
	
	self 
		type: PortType flowOut;
		leftValueGetter: [self];
		rightValueGetter: [self connectedPort ifNotNilDo: [:port | port block]].
		