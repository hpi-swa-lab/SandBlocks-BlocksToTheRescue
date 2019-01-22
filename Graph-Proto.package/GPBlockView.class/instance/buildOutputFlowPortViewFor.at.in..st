buildPortViews
buildOutputFlowPortViewFor: aPort at: aNumber in: aMorph

	self 
		buildPort: aPort 
		at: [:port | 
			port topRight: self topRight. 
			port top: (aNumber - 1) * (port height + 3)]
		in: aMorph. 

	