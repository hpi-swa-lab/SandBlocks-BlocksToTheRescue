initialization
initializeDownButton
	
	self downButton: (self 
		makeButtonForAction: #increment 
		form: BTRIcons decrementArrowIcon
		withDescription: 'click here to decrement the value' translated).