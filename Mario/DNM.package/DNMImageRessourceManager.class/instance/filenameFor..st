private accessing
filenameFor: aSymbol
	^filenamesBySymbol at: aSymbol ifAbsent: [^self error: ('No filename for symbol: #', aSymbol asString)]
	
	
	