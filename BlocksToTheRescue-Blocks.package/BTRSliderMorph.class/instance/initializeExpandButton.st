initialization
initializeExpandButton
	
	self expandButton: (self 
							makeButtonForAction: #expandView 
							form: SystemWindow expandBoxImage 
							withDescription: 'click here to adjust the range and step' translated).