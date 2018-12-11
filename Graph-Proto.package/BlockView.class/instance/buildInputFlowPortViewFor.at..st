buildPortViews
buildInputFlowPortViewFor: aPort at: aNumber

	self buildPort: aPort at: [:port | port top: (aNumber - 1) * (port height + 3)] 
	

	