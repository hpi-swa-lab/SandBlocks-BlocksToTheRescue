as yet unclassified
applyUserInput

	self keyboardListener allPressedKeySymbols 
		do: [:each | self mario handleInput: each inWorld: self]