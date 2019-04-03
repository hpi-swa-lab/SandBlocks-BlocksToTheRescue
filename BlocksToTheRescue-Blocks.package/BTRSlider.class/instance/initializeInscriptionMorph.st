initialization
initializeInscriptionMorph

	inscriptionMorph := self value asString asMorph.
	self addMorphCentered: self inscriptionMorph.