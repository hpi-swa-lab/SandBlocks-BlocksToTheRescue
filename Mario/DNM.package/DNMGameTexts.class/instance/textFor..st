accessing
textFor: aSymbol
	^(textsByLanguage at: self language) at: aSymbol ifAbsent: ['---MISSING TEXT---']
	
	