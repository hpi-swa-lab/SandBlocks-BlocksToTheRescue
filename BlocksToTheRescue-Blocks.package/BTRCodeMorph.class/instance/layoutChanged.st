as yet unclassified
layoutChanged

	super layoutChanged.
	self model viewDataAt: #inlineViewProportions put: self proportions.