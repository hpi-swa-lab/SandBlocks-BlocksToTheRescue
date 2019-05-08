as yet unclassified
layoutChanged

	super layoutChanged.
	
	self layoutFrame ifNil: "We then have a layoutchange triggered by the user explicitly"
		[self model viewDataAt: #inlineViewProportions put: self proportions].