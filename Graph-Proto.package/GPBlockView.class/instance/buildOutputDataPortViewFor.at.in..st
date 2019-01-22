buildPortViews
buildOutputDataPortViewFor: aPort at: aNumber in: aMorph

	self 
		buildPort: aPort 
		at: [:port |
			port topRight: self topRight. 
			port top: (aNumber + self topOffset) * (port height + 3)]
		in: aMorph.
	
	

	