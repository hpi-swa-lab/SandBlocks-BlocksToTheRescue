accessing
allPressedKeySymbols
	^pressedKeyValues collect: [:aKeyValue | keycodeConverter keySymbolFor: aKeyValue]