conversions
asFlowIn

	self
		asFlow;
	 	type: GPPortType flowIn;
		leftValueGetter: [self connectedPort ifNotNilDo: [:port | port block]];
		rightValueGetter: [self].