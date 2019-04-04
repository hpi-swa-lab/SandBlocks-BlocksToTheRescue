accessing
controlAbilities
	|keyboardListener|
	keyboardListener := self representedObject keyboardListener.
	keyboardListener allPressedKeySymbols do: [:key | (actionByKeySymbol at: (key) ifAbsent: [ [] ]) value].