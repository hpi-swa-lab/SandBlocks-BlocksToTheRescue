initialize-release
configure: aDictionary

	(aDictionary at: #ownerMorph)
		addMorph: self morph.
	aDictionary at: #position
		ifPresent: [:position | self morph position: position].