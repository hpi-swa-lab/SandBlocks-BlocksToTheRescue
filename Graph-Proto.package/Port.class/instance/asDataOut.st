conversions
asDataOut

	self 
		asData;
		type: PortType dataOut;
		leftValueGetter: [self block getDataAt: self];
		rightValueGetter: [self connectedPort rightValue]