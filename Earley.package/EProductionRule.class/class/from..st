as yet unclassified
from: anArray

	^ self new 
		symbols: (anArray collect: [:each | each isSymbol 
													ifTrue: [ENonTerminal new symbol: each] 
													ifFalse: [ETerminal new condition: each]]);
		yourself

	