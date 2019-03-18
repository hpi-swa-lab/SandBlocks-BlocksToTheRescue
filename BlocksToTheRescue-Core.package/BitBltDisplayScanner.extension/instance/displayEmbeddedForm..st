*BlocksToTheRescue-Core
displayEmbeddedForm: aForm
	aForm 
		displayOn: bitBlt destForm 
		at: destX @ (lineY + line baseline - (aForm height / 2) floor)
		clippingBox: bitBlt clipRect
		rule: Form blend
		fillColor: Color white 