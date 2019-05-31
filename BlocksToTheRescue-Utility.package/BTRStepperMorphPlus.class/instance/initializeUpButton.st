initialization
initializeUpButton
	
	self upButton: (self 
		makeButtonForAction: #increment 
		form: BTRIcons incrementArrowIcon
		withDescription: 'click here to increment the value' translated).