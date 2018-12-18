buildPortViews
buildInputDataPortViewFor: aPort at: aNumber in: aMorph

	self 
		buildPort: aPort 
		at: [:port | port top: (aNumber + self topOffset) * (port height + 3)]
		in: aMorph.
	

	