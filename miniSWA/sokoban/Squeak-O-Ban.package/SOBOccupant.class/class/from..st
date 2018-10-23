instance creation
from: aCharacter

	^ (aCharacter caseOf: {
		[$$] -> [SOBBox].
		[$*] -> [SOBBox].
		[$+] -> [SOBPlayer].
		[$@] -> [SOBPlayer].
	} otherwise: [SOBVoid]) new