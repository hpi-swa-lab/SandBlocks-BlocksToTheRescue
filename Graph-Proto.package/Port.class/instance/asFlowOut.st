conversions
asFlowOut

	self 
		asFlow;
		type: PortType flowOut;
		leftValueGetter: [self];
		rightValueGetter: [self connectedPort ifNotNilDo: [:port | port block]]