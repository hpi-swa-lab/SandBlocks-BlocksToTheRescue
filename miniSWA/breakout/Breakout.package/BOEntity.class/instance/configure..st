initialize-release
configure: aDictionary

	aDictionary at: #position ifPresent: [:position | self position: position].
	aDictionary at: #extent ifPresent: [:extent | self extent: extent].