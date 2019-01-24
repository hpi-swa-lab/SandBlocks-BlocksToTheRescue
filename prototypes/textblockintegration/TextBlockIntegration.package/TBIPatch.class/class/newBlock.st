instance creation
newBlock

	^ self new
		morph: (TBIColorMorph new);
		type: #block;
		yourself