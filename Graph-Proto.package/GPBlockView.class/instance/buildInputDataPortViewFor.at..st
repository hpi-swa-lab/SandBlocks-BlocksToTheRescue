buildPortViews
buildInputDataPortViewFor: aPort at: aNumber

	self buildPort: aPort at: [:port | port top: (aNumber + self topOffset) * (port height + 3)].
	

	