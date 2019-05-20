as yet unclassified
layoutChanged

	super layoutChanged.
	
	(self layoutFrame isNil 
		and: [self extent ~= self extentToUse] 
		and: [self extent ~= self defaultBounds extent] 
		and: [self extent ~= self defaultExtent])
		ifTrue: "We then have a layoutchange triggered by the user explicitly"
			[self model viewDataAt: #inlineViewProportions put: self proportions].