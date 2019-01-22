conversions
asFlowOut

	self 
		asFlow;
		type: GPPortType flowOut;
		leftValueGetter: [self block];
		rightValueGetter: [self connectedPort ifNotNilDo: [:port | port block]].