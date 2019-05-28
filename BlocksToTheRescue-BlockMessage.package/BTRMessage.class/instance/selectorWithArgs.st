as yet unclassified
selectorWithArgs
	
	| selectorString |
	selectorString := ''.
	
	(self internalSymbol subStrings: ':') with: (self parameterFields collect: [:each | each contents asString]) do: [:first :second | selectorString := selectorString, first, ': ', second, ' '].
	
	^ selectorString
	