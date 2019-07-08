initialization
initializeRowTextField

	rowTextField := BTRTextField on: self getText: #rowExpression setText: #rowExpression:.
	self rowTextField 
		editTextSelector: #rowExpression:;
		hResizing: #spaceFill;
		vResizing: #rigid.