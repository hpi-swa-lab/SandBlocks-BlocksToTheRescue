as yet unclassified
asPerl

	self
		setVertices: self vertices;
		type: PortType flowOut;
		leftValueGetter: [self];
		rightValueGetter: [self connectedPort ifNotNilDo: [:port | port block]].
		