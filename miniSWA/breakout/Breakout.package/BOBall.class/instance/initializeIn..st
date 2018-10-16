as yet unclassified
initializeIn: ownerMorph

	self initialize.
	self morph: CircleMorph new.
	ownerMorph addMorph: self morph.