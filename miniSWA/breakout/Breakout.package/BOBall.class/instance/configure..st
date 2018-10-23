initialize-release
configure: aDictionary

	super configure: aDictionary.
	"Transcript showln: self extent asString, '|', self position asString, '|', (aDictionary at: #bottomCenterPosition) asString."
	aDictionary at: #bottomCenterPosition ifPresent: [:position |
		self position: position - (0@(self extent y/2))].