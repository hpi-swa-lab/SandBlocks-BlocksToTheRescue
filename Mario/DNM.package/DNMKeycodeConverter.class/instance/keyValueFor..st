accessing
keyValueFor: aSymbol
	"Returns the key value corresponding to aSymbol. There must be an entry for aSymbol in keyValueBySymbol."
	^keyValueBySymbol at: aSymbol ifAbsent: [self error: 'No keycode for this symbol: ', aSymbol]
	