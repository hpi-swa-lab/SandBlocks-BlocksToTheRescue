conversions
asDataOut

	self 
		asData;
		type: GPPortType dataOut;
		leftValueGetter: [self block getDataAt: self];
		rightValueGetter: [self connectedPort rightValue].