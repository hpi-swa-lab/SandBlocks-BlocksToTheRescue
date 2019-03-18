*BlocksToTheRescue-Core
displayEmbeddedForm: aForm
	canvas
		drawImage: aForm
		at: destX @ (lineY + line baseline - (aForm height / 2) floor)