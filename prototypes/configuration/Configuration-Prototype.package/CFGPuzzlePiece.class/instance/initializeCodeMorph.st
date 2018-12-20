initialization
initializeCodeMorph

	self codeMorph: StringMorph new.
	self codeMorph lock.
	self 
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addMorph: self codeMorph.