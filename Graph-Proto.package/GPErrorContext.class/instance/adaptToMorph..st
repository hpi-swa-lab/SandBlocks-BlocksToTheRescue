as yet unclassified
adaptToMorph: aMorph

	self extent: aMorph extent.
	self height: self height + self initialHeight.
	aMorph position: self position.