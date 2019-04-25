initialization
initializeCollapseButton
	
	self collapseButton: (self 
							makeButtonForAction: #collapseView 
							form: SystemWindow collapseBoxImage 
							withDescription: 'click here to collapse the row for adjusting the range and step' translated).