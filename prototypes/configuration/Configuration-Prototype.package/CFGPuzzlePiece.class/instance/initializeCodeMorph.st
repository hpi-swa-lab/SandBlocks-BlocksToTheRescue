initialization
initializeCodeMorph

	self codeMorph: StringMorph new.
	self codeMorph lock.
	self addMorph: self codeMorph.