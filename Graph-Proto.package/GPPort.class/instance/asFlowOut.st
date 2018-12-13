conversions
asFlowOut

	self 
		asFlow;
		type: GPPortType flowOut;
		leftValueGetter: [self];
		rightValueGetter: [self connectedPort ifNotNilDo: [:port | port block]].