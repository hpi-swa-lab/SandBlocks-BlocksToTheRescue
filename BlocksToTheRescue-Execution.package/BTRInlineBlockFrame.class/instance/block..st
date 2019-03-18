as yet unclassified
block: aBlock

	block := aBlock.
	self viewPort 
		removeAllMorphs;
		addMorph: aBlock asMorph.
	self updateSelectors.