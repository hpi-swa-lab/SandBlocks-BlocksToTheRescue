conversions
asFlowIn

	self
		asFlow;
	 	type: PortType flowIn;
		leftValueGetter: [self connectedPort ifNotNilDo: [:port | port block]];
		rightValueGetter: [self]