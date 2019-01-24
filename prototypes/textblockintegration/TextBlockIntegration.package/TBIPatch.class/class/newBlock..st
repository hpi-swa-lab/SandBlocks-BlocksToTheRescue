instance creation
newBlock: aMorph

	^ self new
		morph: aMorph;
		type: #block;
		yourself