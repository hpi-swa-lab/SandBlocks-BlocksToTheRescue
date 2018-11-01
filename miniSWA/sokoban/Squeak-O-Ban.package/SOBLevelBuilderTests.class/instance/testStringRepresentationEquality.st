as yet unclassified
testStringRepresentationEquality

	| level |
	level := SOBLevel fromString: self allCharacters.
	self 
		assert: self allCharacters , Character cr 
		equals: (String streamContents: [:s | level tilesPrintOn: s]).