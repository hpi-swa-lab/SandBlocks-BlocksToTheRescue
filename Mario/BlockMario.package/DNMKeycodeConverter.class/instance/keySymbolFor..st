accessing
keySymbolFor: aValue
	"Returns the corresponding symbol, if there is any. Otherwise returns #unknownKey."
	^keyValueBySymbol keyAtValue: aValue ifAbsent: [#unknownKey]
	