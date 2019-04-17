initialization
initializeColumnTextField

	columnTextField := BTRTextField on: self getText: #columnExpression setText: #columnExpression:.
	self columnTextField editTextSelector: #columnExpression:.