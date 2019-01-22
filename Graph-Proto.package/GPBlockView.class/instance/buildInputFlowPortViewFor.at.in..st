buildPortViews
buildInputFlowPortViewFor: aPort at: aNumber in: aMorph

	self buildPort: aPort at: [:port | port top: (aNumber - 1) * (port height + 3)] in: aMorph.
	

	