buildPortViews
buildPort: aPort at: aBlock in: aMorph

	aPort block: self blockModel.
	aMorph addMorph: aPort.
	aBlock value: aPort.