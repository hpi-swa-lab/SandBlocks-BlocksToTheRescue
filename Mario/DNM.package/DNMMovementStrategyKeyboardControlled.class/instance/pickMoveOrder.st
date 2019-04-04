accessing
pickMoveOrder
	"checks which relevant keys are pressed and evaluates their block"
	|keyboardListener|.
	keyboardListener := self representedObject keyboardListener.
	keyboardListener allPressedKeySymbols do: [:key | (actionByKeySymbol at: (key) ifAbsent: [ [] ]) value].