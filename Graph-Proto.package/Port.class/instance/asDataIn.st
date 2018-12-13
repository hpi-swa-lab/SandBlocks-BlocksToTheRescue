conversions
asDataIn

	self 
		asData;
		type: PortType dataIn;
		leftValueGetter: [self connectedPort ifNotNilDo: [:port | port leftValue]];
		rightValueGetter: [self "why should I want to know this"].