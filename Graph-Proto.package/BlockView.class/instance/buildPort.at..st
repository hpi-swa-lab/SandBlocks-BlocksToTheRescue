buildPortViews
buildPort: aPort at: aBlock

	aPort block: self blockModel.
	self addMorph: aPort.
	aBlock value: aPort