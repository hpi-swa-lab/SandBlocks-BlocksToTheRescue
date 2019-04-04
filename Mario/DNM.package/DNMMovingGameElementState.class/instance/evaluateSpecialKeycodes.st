state interface
evaluateSpecialKeycodes
	|keyboardListener|
	keyboardListener := self representedObject keyboardListener.
	keyboardListener allPressedKeySymbols do: [:key | 
		(specialKeycodeDictionary at: (key) ifAbsent: [ [:me | ] ]) value: (self)]