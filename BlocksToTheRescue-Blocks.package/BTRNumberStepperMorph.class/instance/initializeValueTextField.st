initialization
initializeValueTextField

	self valueTextField: (BTRTextField on: self getText: #valueExpression setText: #valueExpression).
	self valueTextField
		editTextSelector: #valueExpression:;
		hResizing: #spaceFill;
		vResizing: #spaceFill.