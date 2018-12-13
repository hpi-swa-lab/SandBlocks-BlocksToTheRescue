buildPortViews
buildOutputDataPortViewFor: aPort at: aNumber

	self buildPort: aPort at: [:port |
		port topRight: self topRight. 
		port top: (aNumber + self topOffset) * (port height + 3)].
	
	

	